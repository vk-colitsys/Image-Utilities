<cfset imageutils = createObject("component", "imageutilsroot.imageUtils")>

<cfoutput>singlePage.tiff pages: #imageutils.tiffPageCount(expandPath("../images/singlePage.tif"))#</cfoutput>

<p/>

<cfoutput>multiPage.tiff pages: #imageutils.tiffPageCount(expandPath("../images/multiPage.tif"))#</cfoutput>

