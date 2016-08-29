
<cfset imageutils = createObject("component", "imageutilsroot.imageUtils")>

<cfset pic = imageRead("../cute_blonde.jpg")>

<cfset text = "This text is centered.">

<cfset pos = imageutils.getCenteredTextPosition(pic, text, "Arial Black", "plain", 15)>
<cfdump var="#pos#">

<cfset tProps =  { style='plain', size=15, font='Arial Black' }>
<cfset imageDrawText(pic, text, pos.x, pos.y, tProps)>
<cfimage action="writeToBrowser" source="#pic#">

<cfset pic = imageRead("../cute_blonde.jpg")>
<cfset tProps =  { style='bold', size=24, font='Arial Black' }>
<cfset pos = imageutils.getCenteredTextPosition(pic, text, tprops)>
<cfdump var="#pos#">

<cfset imageDrawText(pic, text, pos.x, pos.y, tProps)>
<cfimage action="writeToBrowser" source="#pic#">
