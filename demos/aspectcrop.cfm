<!---
	Author: Emmet McGovern
	http://www.illequipped.com/blog
	emmet@fullcitymedia.com
	2/29/2008  - Leap Day!
--->

<h1>AspectCrop() Demo Page</h1>
<p>Resize and crop an image to a fixed dimension while maintaining aspect</p>

<cfparam name="form.width" default="500">
<cfparam name="form.height" default="339">
<cfparam name="form.position" default="center">

<cfoutput>
<p>
	<form method="post">
		Width: <input type="text" name="width" value="#form.width#" size="5"><br />
		Height: <input type="text" name="height" value="#form.height#"  size="5"><br />
		Crop Position: 
		<select name="position">
			<option value="topleft" <cfif form.position is "topleft">selected</cfif>>TopLeft</option>
			<option value="topcenter" <cfif form.position is "topcenter">selected</cfif>>TopCenter</option>
			<option value="topright" <cfif form.position is "topright">selected</cfif>>TopRight</option>
			<option value="left" <cfif form.position is "left">selected</cfif>>Left</option>
			<option value="center" <cfif form.position is "center">selected</cfif>>Center</option>
			<option value="right" <cfif form.position is "right">selected</cfif>>Right</option>
			<option value="bottomleft" <cfif form.position is "bottomleft">selected</cfif>>BottomLeft</option>
			<option value="bottomcenter" <cfif form.position is "bottomcenter">selected</cfif>>BottomCenter</option>
			<option value="bottomright" <cfif form.position is "bottomright">selected</cfif>>BottomRight</option>
		</select><br />
		<input type="submit" value="Crop It!">
	</form>
</p>


<cfset imageutils = createObject("component", "imageutilsroot.imageUtils")>
<cfset pic = imageread("../cute_blonde.jpg")>

<p>
	<strong>Original Image</strong><br />
	<cfimage action="writeToBrowser" source="#pic#">
</p>


<!--- 
AspectCrop([source, cropwidth, cropheight, position])
requires: source, cropwidth, cropheight
optional: position (defaults to center)
--->
<p>
	<strong>AspectCrop()</strong><br />
	crop to #form.position#<br />
	<cfset aspect = ImageNew(pic)>
	<cfset aspect = imageutils.aspectCrop(aspect,form.width,form.height,form.position)>
	<cfimage action="writeToBrowser" source="#aspect#">
</p>

<h3>Comparisons</h3>

<!--- ImageCrop() --->
<p>
	<strong>ImageCrop()</strong><br />
	<cfset crop = ImageNew(pic)>
	<cfset ImageCrop(crop,0,0,form.width,form.height)>
	<cfimage action="writeToBrowser" source="#crop#">
</p>

<!--- ImageResize() --->
<p>
	<strong>ImageResize()</strong><br />
	<cfset resize = ImageNew(pic)>
	<cfset imageResize(resize,form.width,form.height) />
	<cfimage action="writeToBrowser" source="#resize#">
</p>

<!--- ImageScaleToFit() --->
<p>
	<strong>ImageScaleToFit()</strong><br />
	<cfset scale = ImageNew(pic)>
	<cfset ImageScaletoFit(scale,form.width,form.height)>
	<cfimage action="writeToBrowser" source="#scale#">
</p>

</cfoutput>
