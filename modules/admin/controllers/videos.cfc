<cfscript>
component extends="_main" output="false" 
{
	function init() 
	{
		super.init();
	}
	
	function sharedObjects(videoid)
	{		
		videofiles = model("File").findAll("filetype = 'video'");
		videocategories = model("VideoCategory").findAll();
		selectedvideocategories = model("VideoCategoryJoin").findAll(where="videoid = #arguments.videoid#",include="Video,VideoCategory");
		selectedvideocategories = ValueList(selectedvideocategories.videocategoryid);
		
		sites = model("Site").findAll();
		usStates = getStatesAndProvinces();
		countries = getCountries();	
	}
	
	function index()
	{
		sharedObjects(0);
		distinctVideoColumns = "id, name, filename, filepath, description, bytesize, youtubeid, status, createdat, updatedat";
		videoColumns = "#distinctVideoColumns#, description, status, category_id";
		
		statusTabs("video");
		
		qVideos = model("ViewVideo").findAll(
			where	= buildWhereStatement("Video"), 
			order	= session.videos.sortby & " " & session.videos.order, 
			select	= videoColumns
		);
		
		filterResults();
		
		// Paginate me batman
		pagination.setQueryToPaginate(qVideos);	
		pagination.setItemsPerPage(session.perPage);		
		paginator = pagination.getRenderedHTML();
		
		// If oauth comes back to homepage
		if(!isNull(params.token))
		{
			video = model("Video").findAll(where="id = #params.id#");
		}
	}
	
	function edit()
	{						
		if(isDefined("params.id")) 
		{
			// Queries
			sharedObjects(params.id);						
			video = model("Video").findAll(where="id = '#params.id#'#wherePermission("Video","AND")#", maxRows=1, returnAs="Object");
			if(ArrayLen(video))
			{				
				video = video[1];
			}
			
			// Video not found?
			if (!IsObject(video))
			{
				flashInsert(error="Not found");
				redirectTo(route="moduleIndex", module="admin", controller="videos");
			}			
		}
		
		renderView(action="editor");		
	}
	
	function new()
	{
		// Queries
		video = model("Video").new(colStruct("Video"));
		
		sharedObjects(0);
		
		videofiles = model("File").findAll("filetype = 'video'");
		
		// If not allowed redirect
		wherePermission("Video");
		
		// Show page
		renderView(action="editor");
	}


	function delete()
	{
		video = model("Video").findByKey(params.id);
		
		if(video.delete())
		{
			flashInsert(success="The video was deleted successfully.");							
		} else 
		{
			flashInsert(error="The video could not be found.");
		}
		
		redirectTo(
			route="moduleIndex",
			module="admin",
			controller="videos"
		);
	}

	function save()
	{			
		param name="params.video.videofileid" default="";
		param name="params.videocategories" default="";
		
		// Handle submit button type (publish,draft,trash,etc)
		if(!isNull(params.submit))
		{
			params.video.status = handleSubmitType("video", params.submit);	
		}
				
		// Enter video via youtube URL
		if(!isNull(params.video.youtubeId))
		{
			params.video.youtubeId = XMLFormat(trim(params.video.youtubeId));			
			
			// If youtube thumb is selected, save the image
			if(!isNull(params.thumbid))
			{
				model("Video").saveYoutubeThumb(
					params.video.youtubeId,
					"http://i1.ytimg.com/vi/#params.thumbid#/hqdefault.jpg"
				);
			}
		}
		
		// Get video object
		if(!isNull(params.video.id)) 
		{
			video = model("Video").findByKey(params.video.id);
			saveResult = video.update(params.video);	
			
			// Clear existing video category associations
			model("videoCategoryJoin").deleteAll(where="videoid = #params.video.id#");
		} else {
			video = model("Video").new(params.video);
			saveResult = video.save();
		}
		
		// Insert or update video object with properties
		if (saveResult)
		{								
			// Insert new video category associations			
			for(id in ListToArray(params.videocategories))
			{				
				model("videoCategoryJoin").create(videocategoryid = id, videoid = video.id);				
			}
			
			flashInsert(success="Video saved.");
			redirectTo(route="moduleId", module="admin", controller="videos", action="edit", id=video.id);	
		} else {						
			
			errorMessagesName = "video";
			param name="video.id" default="0";
			sharedObjects(video.id);
			
			flashInsert(error="There was an error.");
			renderView(route="moduleAction", module="admin", controller="videos", action="editor");		
		}		
	}
	
	function deleteSelection()
	{
		for(i=1; i LTE ListLen(params.deletelist); i++)
		{
			model("Video").findByKey(ListGetAt(params.deletelist,i)).delete();
		}
		
		flashInsert(success="Your videos were deleted successfully!");			
		
		redirectTo(
			route="moduleIndex",
			module="admin",
			controller="videos"
		);
	}
	
	function setPerPage()
	{
		if(!isNull(params.id) AND IsNumeric(params.id))
		{
			session.perPage = params.id;
		}
		
		redirectTo(
			route="moduleIndex",
			module="admin",
			controller="videos"
		);
	}
	
	function filterResults()
	{
		if(!isNull(params.filtertype) AND params.filtertype eq "clear")
		{
			resetIndexFilters();
		}
		else
		{
			// Get main query
			qqVideos = qVideos;	
			rememberParams = "";				
			
			// Set display type
			if(!isNull(params.display))
			{
				session.display = params.display;			
			}			
			
			// Set sort
			if(!isNull(params.sort))
			{
				session.videos.sortby = params.sort;			
			}
			
			// Set order
			if(!isNull(params.order))
			{
				session.videos.order = params.order;			
			}
			
			// Set "hosted" filter
			if(!isNull(params.hosted))
			{
				session.videos.hosted = params.hosted;
			}	
			
			// Apply "search" filter
			if(!isNull(params.search) AND len(params.search))
			{
				rememberParams = ListAppend(rememberParams,"search=#params.search#","&");
				
				// Break apart search string into a keyword where clause
				var whereKeywords = [];			
				var keywords = listToArray(trim(params.search)," ");			
				for(keyword in keywords)
				{
					ArrayAppend(whereKeywords, "name LIKE '%#keyword#%'");
					ArrayAppend(whereKeywords, "description LIKE '%#keyword#%'");
				}
				
				// Include permission check if defined
				whereKeywords = ArrayToList(whereKeywords, " OR ");
				if(len(wherePermission("Video")))
				{
					whereClause = wherePermission("Video") & " AND (" & whereKeywords & ")";
				} else {
					whereClause = whereKeywords;	
				}					
				
				qqVideos = model("ViewVideo").findAll(
					where	= whereClause,
					order	= session.videos.sortby & " " & session.videos.order, 
					select	= videoColumns
				);
			}
			
			// Apply "hosted" filter
			if(!isNull(params.hosted) AND len(params.hosted))
			{
				rememberParams = ListAppend(rememberParams,"hosted=#params.hosted#","&");	
				
				if(params.hosted eq "local")
				{				
					qqVideos = queryOfQueries("qqVideos","youtubeid IS NULL OR youtubeid = ''");
				} 
				else if(params.hosted eq "youtube")
				{
					qqVideos = queryOfQueries("qqVideos","youtubeid IS NOT NULL AND youtubeid != ''");
				} 
				else if(params.hosted eq "both") 
				{
					qqVideos = queryOfQueries("qqVideos","youtubeid IS NOT NULL AND youtubeid != '' AND fileid IS NOT NULL and fileid != ''");
				}
			}
			
			// Apply "category" filter
			if(!isNull(params.filtercategories) AND len(params.filtercategories))
			{
				rememberParams = ListAppend(rememberParams,"filtercategories=#params.filtercategories#","&");				
				var filtercategories = listToArray(params.filtercategories);
				var whereCategories = [];
				
				for(categoryid in filtercategories)
				{
					ArrayAppend(whereCategories, "category_id = #categoryid#");
				}
				
				whereCategories = ArrayToList(whereCategories, " OR ");
				
				qqVideos = queryOfQueries(
					query	= "qqVideos",
					where	= whereCategories
				);
			}
			
			// Clear out the duplicates
			qqVideos = queryOfQueries(
				query	= "qqVideos", 
				select	= "DISTINCT #distinctVideoColumns#", 
				order	= session.videos.sortby & " " & session.videos.order
			);
			
			qVideos = qqVideos;
			
			if(len(rememberParams))
			{
				pagination.setAppendToLinks("&#rememberParams#");
			}
			
			//renderView(route="moduleAction", module="admin", controller="videos", action="index");		
		}
	}
}
</cfscript>