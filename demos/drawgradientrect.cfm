<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<title>DrawGradientRect() Demo Page</title>
</head>
<body>

	<h1>
		DrawGradientRect() Demo Page
	</h1>	
	
	
	<!--- Create the image utils object. --->
	<cfset objImageUtils = CreateObject( "component", "imageutilsroot.imageUtils" ).Init() />
	
	<!--- Read in image. --->
	<cfimage
		action="read"
		source="../cute_blonde.jpg"
		name="objImage"
		/>
		
	<!--- Create the To/From Colors. --->
	<cfset objFromColor = objImageUtils.HexToRGB( "##FFFFFF" ) />
	<cfset objToColor = objImageUtils.HexToRGB( "##FFFFFF" ) />
		
	<!--- Add fade to transparent alpha. --->
	<cfset objToColor.Alpha = 0 />
		
	<!--- Draw the gradient rectangle. --->
	<cfset objImageUtils.DrawGradientRect(
		objImage,
		0,
		0,
		ImageGetWidth( objImage ),
		ImageGetHeight( objImage ),
		objFromColor,
		objToColor,
		"LeftRight"
		) />
		
	<!--- Write to browser. --->
	<cfimage 
		action="writetobrowser"
		source="#objImage#"
		/>
		
</body>
</html>
