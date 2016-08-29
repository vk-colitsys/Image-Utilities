<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<title>WriteToBrowser() Demo Page</title>
</head>
<body>

	<h1>
		WriteToBrowser() Demo Page
	</h1>	
	
	<!--- Create the image utils object. --->
	<cfset objImageUtils = CreateObject( "component", "imageutilsroot.imageUtils" ).Init() />
	
	
	<!--- Read in image. --->
	<cfimage
		action="read"
		source="../cute_blonde.jpg"
		name="objImage"
		/>
	
	<!--- Write the image to the browser. --->
	<cfset strUrl = objImageUtils.WriteToBrowser( 
		Image = objImage,
		Alt = "This was written to the browser with a custom function.",
		Style = "border: 1px solid ##990000 ; padding: 5px 5px 5px 5px ; background-color: ##E0E0E0 ;"
		) />
		
</body>
</html>
