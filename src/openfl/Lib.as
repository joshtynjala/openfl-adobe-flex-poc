package openfl
{
	import flash.display.DisplayObject;

	/**
	 * @externs
	 */
	public class Lib
	{
		public static var current:DisplayObject;
		public static function setTimeout(fn:Function, timeout:int, args:Array = null):void {}
		public static function getDefinitionByName(name:String):Object { return null; };
	}
}