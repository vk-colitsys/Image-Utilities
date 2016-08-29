
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<title>TrimCanvas()</title>
</head>
<body>
	
	<cfoutput>
	
		<!--- Create the image utils object. --->
		<cfset objImageUtils = CreateObject( "component", "imageutilsroot.imageUtils" ).Init() />
	
		<h1>
			TrimCanvas() Demo
		</h1>
		
		<p>
			Image with centered orange circle:
		</p>
		
		<!--- Create a large, off-white canvas. --->
		<cfset objImage = ImageNew( 
			"",
			300,
			300,
			"argb",
			"##F5F5F5"
			) />
			
		<!--- Set the drawing color. --->
		<cfset ImageSetDrawingColor(
			objImage,
			"##FF9900"
			) />
			
		<!--- Draw a circle in the middle of the canvas. --->
		<cfset ImageDrawOval(
			objImage,
			100,
			100,
			100,
			100,
			"yes"
			) />
			
		
		<cfset objFont  = {
			Size = "20",
			Font = "Arial Black"
			} />
			
		<!--- Draw text. --->
		<cfset ImageDrawText(
			objImage,
			"MY FIRST CIRCLE",
			45,
			250,
			objFont
			) />
			
		<p>
			<!--- Write image to browser. --->
			<cfimage
				action="writetobrowser"
				source="#objImage#"
				/>
		</p>
		
		
		
		<p>
			Trim Canvas:
		</p>
	
		<!--- Trim the canvas. --->
		<cfset objImage = objImageUtils.TrimCanvas(
			objImage,
			"##F5F5F5"
			) />
			
		<p>
			<!--- Write image to browser. --->
			<cfimage
				action="writetobrowser"
				source="#objImage#"
				/>
		</p>
		
	</cfoutput>
		
</body>
</html>