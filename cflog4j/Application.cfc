<cfcomponent output="false">
	
	<!--- Application name, should be unique --->
	<cfset this.name = Hash( getCurrentTemplatePath() ) />
	<!--- How long application vars persist --->
	<cfset this.applicationTimeout = CreateTimeSpan( 0, 2, 0, 0 ) />
	<!--- Run when application starts up --->
	<cffunction name="onApplicationStart" returnType="boolean" output="false">
		<cfset var CFLog4jConfig = createobject( 'component', 'com.cflog4j.CFLog4jConfig' ).init()>
		<cfset application.CFLog4J = createobject( 'component', 'com.cflog4j.CFLog4j' ).init( CFLog4jConfig ) />
		<cfreturn true>
	</cffunction>


	<!--- Fired when user requests a CFM that doesn't exist. --->
	<!--- <cffunction name="onMissingTemplate" returnType="boolean" output="false">
		<cfargument name="targetpage" required="true" type="string">
		<cfreturn true>
	</cffunction> --->
	
	<!--- Run before the request is processed --->
	<cffunction name="onRequestStart" returnType="boolean" output="false">
		<cfargument name="thePage" type="string" required="true" />
		<cfif StructKeyExists( url, 'reset' )>
			<cfset onApplicationStart() />
		</cfif>
		<cfreturn true>
	</cffunction>


</cfcomponent>