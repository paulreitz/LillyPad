package com.lillypad.tmx
{
	
	
	//******************************************************
	//******************************************************
	
	/**
	 * Class Purpose
	 *
	 * @author Paul Reitz
	 */
	public class TmxObject
	{
		protected var _name:String;
		protected var _width:Number;
		protected var _height:Number;
		protected var _x:Number;
		protected var _y:Number;
		protected var _type:String;
		protected var _properties:Array;
		
		
		//******************************************************
		//******************************************************
		
		
		public function TmxObject(data:Object)
		{
			_properties = new Array();
			if (data["name"]) 
			{
				_name = String(data["name"]);
			} // END IF
			if (data["width"]) 
			{
				_width = Number(data["width"]);
			} // END IF
			if (data["height"]) 
			{
				_height = Number(data["height"]);
			} // END IF
			
			if (data["x"]) 
			{
				_x = Number(data["x"]);
			} // END IF
			
			if (data["y"]) 
			{
				_y = Number(data["y"]);
			} // END IF
			
			if (data["type"]) 
			{
				_type = String(data["type"]);
			} // END IF
		}
		
		//******************************************************
		
		
		/**
		 * The .
		 * 
		 * @param	sName	The .
		 * @return				The .
		 */
		public function get name():String
		{
			return _name;
		} // END GET name
		
		
		//******************************************************
		
		
		public function set name(sName:String):void
		{
			_name = sName;
		} // END SET name
		
		//******************************************************
		
		
		/**
		 * The .
		 * 
		 * @param	nWidth	The .
		 * @return				The .
		 */
		public function get width():Number
		{
			return _width;
		} // END GET width
		
		
		//******************************************************
		
		
		public function set width(nWidth:Number):void
		{
			_width = nWidth;
		} // END SET width
		
		//******************************************************
		
		
		/**
		 * The .
		 * 
		 * @param	nHeight	The .
		 * @return				The .
		 */
		public function get height():Number
		{
			return _height;
		} // END GET height
		
		
		//******************************************************
		
		
		public function set height(nHeight:Number):void
		{
			_height = nHeight;
		} // END SET height
		
		//******************************************************
		
		
		/**
		 * The .
		 * 
		 * @param	nX	The .
		 * @return				The .
		 */
		public function get x():Number
		{
			return _x;
		} // END GET x
		
		
		//******************************************************
		
		
		public function set x(nX:Number):void
		{
			_x = nX;
		} // END SET x
		
		//******************************************************
		
		
		/**
		 * The .
		 * 
		 * @param	nY	The .
		 * @return				The .
		 */
		public function get y():Number
		{
			return _y;
		} // END GET y
		
		
		//******************************************************
		
		
		public function set y(nY:Number):void
		{
			_y = nY;
		} // END SET y
		
		//******************************************************
		
		
		/**
		 * The .
		 * 
		 * @param	sType	The .
		 * @return				The .
		 */
		public function get type():String
		{
			return _type;
		} // END GET type
		
		
		//******************************************************
		
		
		public function set type(sType:String):void
		{
			_type = sType;
		} // END SET type
		
		
		//******************************************************
		//******************************************************
	} // END CLASS TmxObject
} // END PACKAGE