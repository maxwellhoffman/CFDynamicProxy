<cfscript>
	obj = createObject("component","child");
	
	//writeDump(getMetadata(obj));
	writeOutput("<br>" & "Child: " & IsInstanceOf(obj,"child"));
	writeOutput("<br>" & "Parent: " & IsInstanceOf(obj,"parent"));
	
	dynProxy = createObject("component","DynProxy");
	obj = dynProxy.getExtendingCFC(obj,"parent");

	//writeDump(getMetadata(obj));
	writeOutput("<br>" & "Child: " & IsInstanceOf(obj,"child"));
	writeOutput("<br>" & "Parent: " & IsInstanceOf(obj,"parent"));
	
</cfscript>