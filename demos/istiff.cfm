<cfset imageutils = createObject("component", "imageutilsroot.imageUtils")>

<cfoutput>Is the singlePage.tiff a tiff? #imageutils.isTiff(expandPath("../images/singlePage.tif"))#</cfoutput>

<p/>

<cfoutput>Is the cute_blonde.jpg a tiff? #imageutils.isTiff(expandPath("../images/cute_blonde.jpg"))#</cfoutput>

