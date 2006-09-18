<cfcontent reset="true">
<cfsetting showdebugoutput="false">

<!doctype html public "-//W3C//DTD HTML 4.01 Transitional//EN">
<cfoutput>	
<html>
<head>
	<title>Fuseaction Testing Application</title>
	<!--- Script files --->
	
	<script language="JavaScript" src="_js/prototype.js" type="text/javascript"></script>
	<script language="javascript" src="_js/common.js" type="text/javascript"></script>
	<script language="javascript" src="_js/behaviour.js" type="text/javascript"></script>
	<script language="JavaScript" src="_js/AjaxRequest.js" type="text/javascript"></script>
	<script language="JavaScript" src="_js/json.js" type="text/javascript"></script>
	<script language="JavaScript" src="_js/testfuseaction.js" type="text/javascript"></script>
	<link rel="stylesheet" type="text/css" href="_styles/general.css" title="Default">

	<script type="text/javascript">
		TestFuseaction = new TestFuseaction();
	</script>

	<script type="text/javascript">
		addLoadEvent(function(){
			TestFuseaction.getCircuits ( $('ctFilterForm').circuit );	
			TestFuseaction.getFuseactions ( $('ctFilterForm').fuseactionToTest, $('ctFilterForm').circuit[$('ctFilterForm').circuit.selectedIndex].value );
	
		});	
	</script>

	
</head>
<body>
	
<div id="overallContainer">
	
	<form id="ctFilterForm">
		
		<div id="circuitOptions">
			<span class="left small bold">Select Fuseaction to Test</span>
			<br/><br/>
			<div class="small floatLeft">
				Circuit:				
		    </div>
		    <div class="floatRight">
				<select class="formField small" style="width: 200px;" name="circuit" size="1">
					<option value="" SELECTED>&nbsp; </option>
				</select>
			</div>
		    <br/><br/>
			<div class="small floatLeft">
				Fuseaction:
			</div>	
			<div class="floatRight">
				<select name="fuseactionToTest" size="1" style="width: 200px;" class="formfield small">
					<option value="" SELECTED>&nbsp; </option>
				</select> 
			</div>			
		</div>
		
		<div id="messageContainer" class="small" style="display:none;"></div>		
		
		<div id="vContainer" class="small" style="display:none;">
			<span class="left bold">Input Varibles</span>
			<br/>
			<span class="italic">(to add input variables click the button below)</span>
			<div id="variableContainer" class="small"></div>
			<div id="additionalVariableContainer" class="small"></div>
		</div>
		
		<div id="circuitFooter" class="small">
			<div class="left">
				<input type="checkbox" name="createBaseline" value="true"> Create Baseline
				#RepeatString("&nbsp;", 5)#
				<input type="checkbox" name="verboseOutput" value="true"> Verbose Output
			</div>
			<br/>
			<div class="left">
				<input type="button" name="addInputVar" value="Add Input Variable">
				#RepeatString("&nbsp;", 2)#
				<input id="executeTest" name="executeTest" type="button" value="Execute Test" class="newbutton">
			</div>
		</div>
	
	</form>	
	
	<div id="consoleContainer">
		<div id="ajaxLoader" class="floatRight">
			<img src="_images/ajax-loader.gif">
		</div>
		&nbsp;<span class="bold">Console</span>&nbsp;&nbsp;<a href="##" id="clearConsole" class="small link">[clear]</a>
		<div id="resultConsole" class="small" ></div>
	</div>
	
	

	
</div>


</body>
</html>
</cfoutput>

