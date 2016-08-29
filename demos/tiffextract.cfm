<cfsetting requesttimeout="120" />
<cfset imageutils = createObject("component", "imageutilsroot.imageUtils")>

<!--- multitiff file --->
<cfset mt = expandPath("../images/multiPage.tif")>
<!--- where to store --->
<cfset dest = expandPath("../images/") & "singlePageBilevelExtract.tif">


I'm fixing to extract me an image, mmmmmmm...<br /><cfflush interval="1">

<cfset imageutils.tiffExtract(mt, dest, "1", true, 5)>


Ok, that is a single (bilevel - black &amp; white) extraction, lets go for a new multi-page (bilevel - black &amp; white) tiff...<br /><cfflush interval="1">

<!--- where to store --->
<cfset dest = expandPath("../images/") & "multiPageBilevelExtract.tif">

<cfset imageutils.tiffExtract(mt, dest, "1,3-5,7", true, 5)>


Nice, that worked as well.  Lets extract a single page color tiff...<br /><cfflush interval="1">

<!--- where to store --->
<cfset dest = expandPath("../images/") & "singlePageColorExtract.tif">

<cfset imageutils.tiffExtract(mt, dest, "8", true, 2)>


OK, one more time, lets try to extract multiple pages with at least one color tiff in it...<br /><cfflush interval="1">

<!--- where to store --->
<cfset dest = expandPath("../images/") & "multiPageColorExtract.tif">

<cfset imageutils.tiffExtract(mt, dest, "4-6,8", true, 2)>


Don't you just love it when everything goes according to plan. :)