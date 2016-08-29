<!---
	Function: OpacityBlend()
	Author: Emmet McGovern
	http://www.illequipped.com/blog
	emmet@fullcitymedia.com
	4/27/2008 - Macaroni Self-Portrait Day!
--->
<cfparam name="form.foreground" default="000000">
<cfparam name="form.background" default="ffffff">
<cfparam name="form.opacity" default="50">

<cfset imageutils = createObject("component", "imageutilsroot.imageUtils")>
<cfset blendHex = imageutils.opacityblend(form.foreground,form.background,form.opacity)>

<cfoutput>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<title>OpacityBlend() Demo Page</title>
	
	<style type="text/css">
		##container {
			width: 760px;
			margin: 0px auto;
			padding: 40px 0px 0px 0px;
			}
		##options {
			width: 360px;
			float: left;
			padding: 0px 0px 0px 0px;
			}
		##boxes {
			width: 360px;
			float: right;
			}
		##box1 {
			background-color: ###form.foreground#;
			width: 360px;
			height: 40px;
			margin: 0px 0px 10px 0px;
			border: 1px solid ##000000;
			}
		##box2 {
			background-color: ###form.background#;
			width: 360px;
			height: 40px;
			margin: 0px 0px 10px 0px;
			border: 1px solid ##000000;
			}
		##box3 {
			background-color: ###form.background#;
			width: 260px;
			height: 225px;
			margin: 0px 0px 10px 0px;
			padding: 75px 0px 0px 100px;
			border: 1px solid ##000000;
			}
		##box4 {
			background-color: ###blendHex#;
			width: 160px;
			height: 150px;
			margin: 0px 0px 0px 0px;
			}
	</style>
	
</head>
<body>

<div id="container">
	
	<div id="options">
		
		<h1>OpacityBlend() Demo</h1>
		<p>Blend a foreground color with a background color using opacity</p>
		
		<p>
			<form method="post">
				Foreground Color: <input type="text" name="foreground" value="#form.foreground#" size="10"><br />
				Background Color: <input type="text" name="background" value="#form.background#"  size="10"><br />
				Opacity (0-100): <input type="text" name="opacity" value="#form.opacity#"  size="10"><br />
				<input type="submit" value="Blend It!">
			</form>
		</p>
		<p>
		<a href="makeshadowopacity.cfm">Another example with MakeShadow() using OpacityBlend() for shadow color</a>
		</p>
		
	</div>
	
	<div id="boxes">
	
		<div id="box1"></div>
		<div id="box2"></div>
		<div id="box3">
			<div id="box4"></div>
		</div>
		<p>Blend Result: #blendhex#</p>
		
	</div>
		
</div>


</body>
</html>
</cfoutput>