<cfset imageutils = createObject("component", "imageutilsroot.imageUtils")>

<cfoutput>Is the singlePage.tiff a multitiff? #imageutils.isMultiTiff(expandPath("../images/singlePage.tif"))#</cfoutput>

<p/>

<cfoutput>Is the multiPage.tiff a multitiff? #imageutils.isMultiTiff(expandPath("../images/multiPage.tif"))#</cfoutput>

