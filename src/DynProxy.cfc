component{
	function getExtendingCFC(any childObj, string parentCFCPath){
		parentObj = createObject("component",parentCFCPath);
		parentMetadata = getmetadata(parentObj);
		getMetadata(childObj).EXTENDS = parentMetadata;
		return childObj;
	}
	
	function getImplementingCFC(any childObj, string parentInterfacePath){
		parentObj = createObject("component",parentInterfacePath);
		parentMetadata = getmetadata(parentObj);
		getMetadata(childObj).IMPLEMENTS = parentMetadata;
		return childObj;
	}
}