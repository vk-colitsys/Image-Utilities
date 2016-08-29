<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<title>GetUrl() Demo Page</title>
</head>
<body>

	<h1>
		GetUrl() Demo Page
	</h1>	
	
	<!--- Create the image utils object. --->
	<cfset objImageUtils = CreateObject( "component", "imageutilsroot.imageUtils" ).Init() />
	
	
	<!--- Read in image. --->
	<cfimage
		action="read"
		source="../cute_blonde.jpg"
		name="objImage"
		/>
	
	<!--- Get Url of image. --->
	<cfset strUrl = objImageUtils.GetUrl( objImage ) />
		
	<!--- Write image. --->
	<cfoutput>
		<p>
			Url: #strUrl#
		</p>
		
		<p>
			<img src="#strUrl#" alt="Manually written IMG tag." border="1" />
		</p>
	</cfoutput>
	
</body>
</html>
