
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<title>GetPixels()</title>
	
	<style type="text/css">
		
		div.canvas {
			background-color: #333333 ;
			border: 1px solid #000000 ;
			float: left ;
			padding: 1px 0px 0px 1px ;
			}
		
		div.row {
			clear: both ;
			height: 3px ;
			margin-bottom: 1px ;
			overflow: hidden ;
			}
		
		div.pixel {
			float: left ;
			font-size: 1px ;
			height: 3px ;
			line-height: 1px ;
			margin: 0px 1px 0px 0px ;
			overflow: hidden ;
			width: 3px ;
			}
	
	</style>
</head>
<body>
	
	<cfoutput>
	
		<!--- Create the image utils object. --->
		<cfset objImageUtils = CreateObject( "component", "imageutilsroot.imageUtils" ).Init() />
	
		<!--- Read in the cute blonde image. --->
		<cfimage
			action="read"
			source="../cute_blonde.jpg"
			name="objImage"
			/>
			
		<h1>
			GetPixels() Demo
		</h1>
		
		<p>
			Read in image:
		</p>
		
		<p>
			<cfimage 
				action="writetobrowser"
				source="#objImage#"
				/>
		</p>
		
		<p>
			Read 50x50 pixel reagion from center:
		</p>
		
			
		<!--- Read in 50 x 50 pixels. --->
		<cfset arrPixels = objImageUtils.GetPixels(
			objImage,
			200,
			185,
			50,
			50
			) />
		
		
		<div class="canvas">
		
			<!--- Loop or y axis. --->
			<cfloop 
				index="intY" 
				from="1" 
				to="#ArrayLen( arrPixels )#" 
				step="1">
				
				<div class="row">
				
					<!--- Loop over x axis. --->
					<cfloop 
						index="intX" 
						from="1"
						to="#ArrayLen( arrPixels[ intY ] )#"
						step="1">
							
						<!--- Get the pixel short-hand from the array. --->
						<cfset objPixel = arrPixels[ intY ][ intX ] />
						
						<div class="pixel" style="background-color: ###objPixel.Hex#;"></div>
					
					</cfloop>
					
				</div>
				
			</cfloop>	
			
		</div>

	</cfoutput>
		
</body>
</html>