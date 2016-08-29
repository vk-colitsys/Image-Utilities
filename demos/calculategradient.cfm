<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<title>CalculateGradient() Demo Page</title>
</head>
<body>

	<h1>
		CalculateGradient() Demo Page
	</h1>	
	
	<p>
		Transition from black to dark blue over 400 steps:
	</p>
	
	<!--- Create the image utils object. --->
	<cfset objImageUtils = CreateObject( "component", "imageutilsroot.imageUtils" ).Init() />
	
	<!--- 
		Transition from black to meidum blue. In order to do this, 
		we are going to need to get the RGB values for each hex
		color value.
	--->
	<cfset objFromColor = objImageUtils.HexToRGB( "##000000" ) />
	<cfset objToColor = objImageUtils.HexToRGB( "##3300CC" ) />
	
	<!--- 
		Calculate color gradient based on 400 steps. This will 
		return an array of length 400 in which each index holds the 
		given color of that step of the gradient.
	--->
	<cfset arrGradient = objImageUtils.CalculateGradient( 
		objFromColor, 
		objToColor, 
		400 
		) />
	
	<cfoutput>
	
		<!--- Loop over the color steps in the gradient. --->
		<cfloop
			index="objColor"
			array="#arrGradient#">
			
			<div style="height: 1px ; background-color: rgb( #objColor.Red#, #objColor.Green#, #objColor.Blue# );">
				<br />
			</div>
			
		</cfloop>
		
	</cfoutput>
		
</body>
</html>
