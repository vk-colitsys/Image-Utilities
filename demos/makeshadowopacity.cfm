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
<cfset pic = imageRead("../cute_blonde.jpg")>
<cfset pic = imageutils.makeShadow(pic,5, 5, imageutils.OpacityBlend(form.foreground,form.background,form.opacity) ,form.background)>

<cfoutput>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<title>MakeShadow() and OpacityBlend() Mash Up</title>
</head>
<body bgcolor="###form.background#">


<h1>MakeShadow() OpacityBlend() Mashup</h1>
<p>Blend a shadow color with a background color using opacity</p>
		
<p>
	<form method="post">
		Page Background Color: <input type="text" name="background" value="#form.background#"  size="10"><br />
		Shadow Color: <input type="text" name="foreground" value="#form.foreground#" size="10"><br />
		Shadow Opacity (0-100): <input type="text" name="opacity" value="#form.opacity#"  size="10"><br />
		<input type="submit" value="Drop it like its hot... with opacity!">
	</form>
</p>



<p>
<cfimage action="writeToBrowser" source="#pic#"><br />
Shadow Color: #imageutils.OpacityBlend(form.foreground,form.background,form.opacity)# 
</p>
<p>
<a href="opacityblend.cfm">Back to OpacityBlend() demo</a>
</p>
</body>
</head>
</cfoutput>