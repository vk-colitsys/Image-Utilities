<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<title>ReflectImage() Demo Page</title>
</head>
<body>

	<h1>
		ReflectImage() Demo Page
	</h1>	
	
	
	<!--- Create the image utils object. --->
	<cfset objImageUtils = CreateObject( "component", "imageutilsroot.imageUtils" ).Init() />
	
	<!--- Read in image. --->
	<cfimage
		action="read"
		source="../cute_blonde.jpg"
		name="objImage"
		/>
		
	
	<!--- Reflect the image.. --->
	<cfset objImage = objImageUtils.ReflectImage(
		objImage,
		"Bottom"
		) />
		
	<!--- Write to browser. --->
	<cfimage 
		action="writetobrowser"
		source="#objImage#"
		/>
		
</body>
</html>
