<cfset imageutils = createObject("component", "imageutilsroot.imageUtils")>


<cfset theurl = "http://www.coldfusionjedi.com">
<cfset img = imageutils.getThumbnail(theurl)>

<cfimage action="writeToBrowser" source="#img#">

<cfsavecontent variable="html">
<h1>HTML Rocks!</h1>

Who needs Ajax and stuff when we have cool html.

<ul>
<li>HTML is smelly
<li>HTML is free
<li>I'm bored
</ul>

<p align="right">
Later all!
</p>
</cfsavecontent>

<cfset img = imageutils.getThumbnail(content=html)>

<cfimage action="writeToBrowser" source="#img#">
