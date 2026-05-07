var flash = openfl;

flash.utils.getDefinitionByName = function(name)
{
	var index = name.lastIndexOf("::");
	if(index != -1)
	{
		name = name.substr(0, index) + "." + name.substr(index + 2);
	}
	var def = org.apache.royale.reflection.getDefinitionByName(name);
	if(def)
	{
		return def;
	}
	return openfl.Lib.getDefinitionByName(name);
};
flash.utils.getQualifiedClassName = function()
{
    return org.apache.royale.reflection.getQualifiedClassName(...arguments);
}
flash.utils.getQualifiedSuperclassName = function()
{
    return org.apache.royale.reflection.getQualifiedSuperclassName(...arguments);
}
flash.utils.describeType = function()
{
	return new XML();
}
flash.system.ApplicationDomain.currentDomain.hasDefinition = function()
{
	var def = null;
	try
	{
		def = flash.utils.getDefinitionByName(...arguments);
	}
	catch(e)
	{
		return false;
	}
	return def != null;
}
flash.system.ApplicationDomain.currentDomain.getDefinition = function()
{
	return flash.utils.getDefinitionByName(...arguments);
}

flash.utils.Proxy = function() {}

flash.utils.Proxy.prototype['http_$$www_adobe_com$2006$actionscript$flash$proxy__getProperty'] = function() {
    return undefined;
}

flash.utils.Proxy.prototype['http_$$www_adobe_com$2006$actionscript$flash$proxy__setProperty'] = function() {

}

flash.utils.Proxy.prototype['http_$$www_adobe_com$2006$actionscript$flash$proxy__hasProperty'] = function() {
    return false;
}

flash.utils.Proxy.prototype['http_$$www_adobe_com$2006$actionscript$flash$proxy__deleteProperty'] = function() {
    return false;
}