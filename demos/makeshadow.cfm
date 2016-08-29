<cfset imageutils = createObject("component", "imageutilsroot.imageUtils")>

<cfset pic = imageRead("../cute_blonde.jpg")>

<cfset pic = imageutils.makeShadow(pic,5, 5)>

<cfimage action="writeToBrowser" source="#pic#">


