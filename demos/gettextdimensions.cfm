<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<title>GetTextDimensions() Demo Page</title>
</head>
<body>

	<h1>
		GetTextDimensions() Demo Page
	</h1>	
	
	<!--- Create the image utils object. --->
	<cfset objImageUtils = CreateObject( "component", "imageutilsroot.imageUtils" ).Init() />
	
	<p>
		Text: Hey There Honey Bunny
	</p>
	
	<cfset objProperties = {
		Font = "Courier New",
		Size = "18",
		Style = "normal"
		} />
	
	<cfdump 
		var="#objImageUtils.GetTextDimensions( 'Hey There Honey Bunny', objProperties )#" 
		label="Text dimensions."
		/>
		
	<br />
		
	<!--- Read in image. --->
	<cfimage
		action="read"
		source="../cute_blonde.jpg"
		name="objImage"
		/>
		
	<!--- Draw text. --->
	<cfset ImageDrawText(
		objImage,
		"Hey There Honey Bunny",
		10,
		30,
		objProperties
		) />
		
	<!--- Write to broser. --->
	<cfimage 
		action="writetobrowser"
		source="#objImage#"
		/>

</body>
</html>
