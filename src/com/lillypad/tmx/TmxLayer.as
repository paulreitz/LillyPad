package com.lillypad.tmx
{
	import com.lillypad.core.LpDisplayObject;
	
	
	
	//******************************************************
	//******************************************************
	
	/**
	 * Class Purpose
	 *
	 * @author Paul Reitz
	 */
	public class TmxLayer extends LpDisplayObject
	{
		public static const TILE_LAYER:String = "tilelayer";
		public static const OBJECT_LAYER:String = "objectgroup";
		
		protected var _type:String;
		protected var _layerWidth:Number;
		protected var _layerHeight:Number;
		
		
		//******************************************************
		//******************************************************
		
		
		public function TmxLayer(data:Object)
		{
			super();
			if (data["type"]) 
			{
				_type = String(data["type"]);
			} // END IF
			
			if (data["width"]) 
			{
				_layerWidth = Number(data["width"]);
			} // END IF
			
			if (data["height"]) 
			{
				_layerHeight = Number(data["height"]);
			} // END IF
		}
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function updateLayer():void
		{
			
		} // END FUNCTION updateLayer
		
		
		
		//******************************************************
		
		
		/**
		 * The .
		 *
		 * @return	The .
		 */
		public function get layerWidth():Number
		{
			return _layerWidth;
		} // END GET layerWidth
		
		
		
		//******************************************************
		
		
		/**
		 * The .
		 *
		 * @return	The .
		 */
		public function get layerHeight():Number
		{
			return _layerHeight;
		} // END GET layerHeight
		//******************************************************
		//******************************************************
	} // END CLASS TmxLayer
} // END PACKAGE