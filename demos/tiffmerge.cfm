<cfsetting requesttimeout="120" />
<cfset imageutils = createObject("component", "imageutilsroot.imageUtils")>


<!--- where to store --->
<cfset dest = expandPath("../images/") & "twoTiffMerge.tif">

<cfset imageArray = [] />
<cfset ArrayAppend(imageArray, expandPath("../images/test.tif")) />
<cfset ArrayAppend(imageArray, expandPath("../images/test2.tif")) />


I wonder if I can merge 2 (bilevel - black &amp; white) tiff images into a multi-page tiff...<br /><cfflush interval="1">

<cfset imageutils.tiffMerge(dest, imageArray, true, 5)>




<!--- where to store --->
<cfset dest = expandPath("../images/") & "multiTiffMerge.tif">

<cfset imageArray2 = [] />
<cfset ArrayAppend(imageArray2, expandPath("../images/test.tif")) />
<cfset ArrayAppend(imageArray2, expandPath("../images/multiPage.tif")) />
<cfset ArrayAppend(imageArray2, expandPath("../images/test2.tif")) />

Ok, that worked.  What about with a multi-page color tiff too...<br /><cfflush interval="1">

<cfset imageutils.tiffMerge(dest, imageArray2, true, 2)>




<!--- where to store --->
<cfset dest = expandPath("../images/") & "nonTiffMerge.tif">

<cfset imageArray3 = [] />
<cfset ArrayAppend(imageArray3, expandPath("../images/test.tif")) />
<cfset ArrayAppend(imageArray3, expandPath("../images/test.gif")) />
<cfset ArrayAppend(imageArray3, expandPath("../images/test.png")) />
<cfset ArrayAppend(imageArray3, expandPath("../images/test.jpg")) />
<cfset ArrayAppend(imageArray3, expandPath("../images/test2.tif")) />

That worked too!  Shall I dare merge non-tiff images too?  I SHALL...<br /><cfflush interval="1">

<cfset imageutils.tiffMerge(dest, imageArray3, true, 2)>

I am truly AMAZED!