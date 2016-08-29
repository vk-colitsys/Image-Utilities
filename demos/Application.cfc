<cfcomponent output="false">
	
	<cfset this.name = "imageutilsdemo">
	<cfset this.mappings["/imageutilsroot"] = expandPath("../")>
	
	<cffunction name="onApplicationStart" returnType="boolean" output="false">
		<cfreturn true>
	</cffunction>

	<cffunction name="onError" returnType="void" output="false">
		<cfargument name="exception" required="true">
		<cfargument name="eventname" type="string" required="true">
		<cfdump var="#arguments#"><cfabort>
	</cffunction>

</cfcomponent>