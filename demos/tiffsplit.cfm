<cfsetting requesttimeout="180" />
<cfset imageutils = createObject("component", "imageutilsroot.imageUtils")>

<!--- multitiff file --->
<cfset mt = expandPath("../images/multiPage.tif")>
<!--- where to store --->
<cfset dest = expandPath("../images")>
<!--- filename prefix --->
<cfset fp = "tiff_split_">
<!--- compression type PACKBITS --->
<cfset compression = 2 />

I'm fixing to split me some images, baby...<br />
<cfflush>

<cfset imageutils.tiffSplit(mt, dest, fp, true, compression)>

Done splitting images.