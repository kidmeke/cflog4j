<!---- Initialize CFLogger as a singelton in application scope. --->
<!--- <cfif not structkeyexists( application, 'init' )> --->
	<cfset CFLog4jConfig = createobject( 'component', 'com.cflog4j.CFLog4jConfig' ).init()>
	<cfset application.CFLog4J = createobject( 'component', 'com.cflog4j.CFLog4j' ).init( CFLog4jConfig ) />
<!---   	<cfset application.init = true />
</cfif>  --->
<!--- get a category instance from CFLog4j. those instances can be defined in cflog4j.properties file. --->
<cfset logger = application.CFLog4J.getCategoryInstance()>
<cfset application.CFLog4J.info( logger, "It's hard enough to find an error in your code when you're looking for it; it's even harder when you've assumed your code is error-free (Steve McConnell)." )>
<!--- This will not show up unless you change the Category level to DEBUG in properties file --->
<cfset application.CFLog4J.debug( logger, "It's hard enough to find an error in your code when you're looking for it; it's even harder when you've assumed your code is error-free (Steve McConnell)." )>
