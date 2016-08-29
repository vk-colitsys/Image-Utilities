<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<title>CreateGradient() Demo Page</title>
</head>
<body>

	<h1>
		CreateGradient() Demo Page
	</h1>	
	
	
	<!--- Create the image utils object. --->
	<cfset objImageUtils = CreateObject( "component", "imageutilsroot.imageUtils" ).Init() />
	
	<!--- Create the To/From Colors. --->
	<cfset objFromColor = objImageUtils.HexToRGB( "##000000" ) />
	<cfset objToColor = objImageUtils.HexToRGB( "##330099" ) />
	
	<!--- Create the gradient (400 x 300). --->
	<cfset objGradient = objImageUtils.CreateGradient(
		objFromColor,
		objToColor,
		"LeftRight",
		400,
		300
		) />
		
	<!--- Write to browser. --->
	<cfimage 
		action="writetobrowser"
		source="#objGradient#"
		/>
		
</body>
</html>
