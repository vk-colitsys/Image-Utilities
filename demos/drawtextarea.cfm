<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<title>DrawTextArea() Demo Page</title>
</head>
<body>

	<h1>
		DrawTextArea() Demo Page
	</h1>	
	
	
	<!--- Create the image utils object. --->
	<cfset objImageUtils = CreateObject( "component", "imageutilsroot.imageUtils" ).Init() />
	
	<!--- Read in image. --->
	<cfimage
		action="read"
		source="../cute_blonde.jpg"
		name="objImage"
		/>
		
	<!--- Create text properties. --->
	<cfset objTextProperties = {
		Size = "24",
		Font = "Courier New",
		Style = "plain",
		LineHeight = "35",
		TextAlign = "right"
		} />
		
	<!--- Draw the text area. --->
	<cfset objImageUtils.DrawTextArea(
		objImage,
		"Hey there sugar. What's going through your mind right now? I bet you're thinking, ""What is this guy doing talking to me? Doesn't he realize that I am waaaay out of his league??""",
		25,
		25,
		450,
		objTextProperties
		) />
		
	<!--- Write to browser. --->
	<cfimage 
		action="writetobrowser"
		source="#objImage#"
		/>
		
</body>
</html>
