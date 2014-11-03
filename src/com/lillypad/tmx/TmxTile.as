package com.lillypad.tmx
{
	import com.lillypad.LpSprite;
	import com.lillypad.core.LpDisplayObject;
	
	import flash.display.Bitmap;
	
	
	
	//******************************************************
	//******************************************************
	
	/**
	 * Class Purpose
	 *
	 * @author Paul Reitz
	 */
	public class TmxTile extends LpDisplayObject
	{
		protected var _properties:Object;
		
		
		//******************************************************
		//******************************************************
		
		
		public function TmxTile(tile:Bitmap)
		{
			super();
			tile.x = tile.width / 2;
			tile.y = tile.height / 2;
			addChild(tile);
			_properties = new Object();
		}
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function setProperty(key:String, value:String):void
		{
			_properties[key] = value;
		} // END FUNCTION setProperty
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function hasProperty(key:String):Boolean
		{
			return _properties.hasOwnProperty(key);
		} // END FUNCTION hasProperty
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function getProperty(key:String):String
		{
			if (_properties.hasOwnProperty(key)) 
			{
				return _properties[key];
			} // END IF
			return null;
		} // END FUNCTION getProperty
		
		//******************************************************
		//******************************************************
	} // END CLASS TmxTile
} // END PACKAGE