package com.lillypad
{
	import com.lillypad.anim.LpTransition;
	import com.lillypad.input.LpKeyboard;
	import com.lillypad.input.LpKeys;
	import com.lillypad.input.LpMouse;
	import com.lillypad.utils.LpSize;
	
	
	//******************************************************
	//******************************************************
	
	/**
	 * Class Purpose
	 *
	 * @author Paul Reitz
	 */
	public class LP
	{
		private static var INIT:Boolean = false;
		private static var _properties:Array;
		private static var _keys:LpKeys;
		private static var _keyboard:LpKeyboard;
		private static var _mouse:LpMouse;
		
		public static var winSize:LpSize;
		public static var frameRate:Number;
		public static var doTransition:Boolean = false;
		public static var replaceHud:Boolean = false;
		public static var transition:LpTransition = null;
		public static var newScene:LpScene = null;
		public static var newHud:LpHud = null;
		
		
		//******************************************************
		//******************************************************
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public static function init():void
		{
			if (!INIT) 
			{
				INIT = true;
				winSize = new LpSize();
				_properties = new Array();
				_keys = new LpKeys();
				_keyboard = new LpKeyboard();
				_mouse = new LpMouse();
			} // END IF
		} // END FUNCTION init
		
		
		
		//******************************************************
		
		
		/**
		 * The .
		 *
		 * @return	The .
		 */
		public static function get centerX():Number
		{
			return winSize.width * 0.5;
		} // END GET centerX
		
		
		
		//******************************************************
		
		
		/**
		 * The .
		 *
		 * @return	The .
		 */
		public static function get centerY():Number
		{
			return winSize.height * 0.5;
		} // END GET centerY
		
		
		
		//******************************************************
		
		
		/**
		 * The .
		 *
		 * @return	The .
		 */
		public static function get width():Number
		{
			return winSize.width;
		} // END GET width
		
		
		
		//******************************************************
		
		
		/**
		 * The .
		 *
		 * @return	The .
		 */
		public static function get height():Number
		{
			return winSize.height;
		} // END GET height
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public static function transitionScene(scene:LpScene, oTransition:LpTransition = null):void
		{
			newScene = scene;
			transition = oTransition;
			doTransition = true;
		} // END FUNCTION transitionScene
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public static function switchHud(hud:LpHud):void
		{
			newHud = hud;
			replaceHud = true;
		} // END FUNCTION switchHud
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public static function storeProperty(key:String, value:*):void
		{
			_properties[key] = value;
		} // END FUNCTION storeProperty
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public static function getProperty(key:String):*
		{
			if (_properties[key] && _properties[key] != undefined) 
			{
				return _properties[key]
			} // END IF
			return undefined;
		} // END FUNCTION getProperty
		
		
		
		//******************************************************
		
		
		/**
		 * The .
		 *
		 * @return	The .
		 */
		public static function get keys():LpKeys
		{
			return _keys;
		} // END GET keys
		
		
		
		//******************************************************
		
		
		/**
		 * The .
		 *
		 * @return	The .
		 */
		public static function get keyboard():LpKeyboard
		{
			return _keyboard;
		} // END GET keyboard
		
		
		
		//******************************************************
		
		
		/**
		 * The .
		 *
		 * @return	The .
		 */
		public static function get mouse():LpMouse
		{
			return _mouse;
		} // END GET mouse
		
		
		//******************************************************
		//******************************************************
	} // END CLASS LP
} // END PACKAGE