package com.lillypad
{
	
	
	//******************************************************
	//******************************************************
	
	/**
	 * Class Purpose
	 *
	 * @author Paul Reitz
	 */
	public class LpLibrary
	{
		private static var INIT:Boolean = false;
		
		private static var _classes:Array;
		
		
		//******************************************************
		//******************************************************
		
		
		public static function init():void
		{
			if (!INIT) 
			{
				INIT = true;
				_classes = new Array();
			} // END IF
		}
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public static function addClass(name:String, c:Class):void
		{
			_classes[name] = c;
		} // END FUNCTION addClass
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public static function getClass(name:String):Class
		{
			if (_classes[name]) 
			{
				return _classes[name];
			} // END IF
			return null;
		} // END FUNCTION getClass
		
		//******************************************************
		//******************************************************
	} // END CLASS LpLibrary
} // END PACKAGE