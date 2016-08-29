<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<title>TileImage() Demo Page</title>
</head>
<body>

	<h1>
		TileImage() Demo Page
	</h1>	
	
	<!--- Create the image utils object. --->
	<cfset objImageUtils = CreateObject( "component", "imageutilsroot.imageUtils" ).Init() />
	
	<!--- Create a blank canvas. --->
	<cfset objImage = ImageNew( "", 500, 340, "rgb" ) />
		
	<!--- Read in the image to tile. --->
	<cfimage
		action="read"
		source="../cute_blonde.jpg"
		name="objTile"
		/>
		
	<!--- Scale the tile image. --->
	<cfimage
		action="resize"
		source="#objTile#"
		height="20%"
		width="20%"
		name="objTile"
		/>
		
	<!--- Tile the image onto our canvas. --->
	<cfset objImageUtils.TileImage(
		objImage,
		objTile,
		0,
		0
		) />
	
	<!--- Write to broser. --->
	<cfimage 
		action="writetobrowser"
		source="#objImage#"
		/>

</body>
</html>
