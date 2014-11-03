package com.lillypad.utils
{
	
	
	//******************************************************
	//******************************************************
	
	/**
	 * Class Purpose
	 *
	 * @author Paul Reitz
	 */
	public class LpSize
	{
		protected var _width:Number;
		protected var _height:Number;
		
		
		//******************************************************
		//******************************************************
		
		
		public function LpSize(nWidth:Number = 0, nHeight:Number = 0)
		{
		}
		
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
		//******************************************************
	} // END CLASS LpSize
} // END PACKAGE