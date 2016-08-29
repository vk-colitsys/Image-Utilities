<cfset imageutils = createObject("component", "imageutilsroot.imageUtils")>

<!--- tiff file file --->
<cfset tf = expandPath("../images/singlePage.tif")>
<!--- where to store pdf --->
<cfset dest = expandPath("../images/tiff.pdf")>


<cfset imageutils.tiffToPDF(tf,dest)>

I made a PDF out of the image. I rock the Casbah.