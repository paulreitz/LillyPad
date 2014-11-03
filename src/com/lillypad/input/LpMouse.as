package com.lillypad.input
{
	import flash.geom.Point;
	
	
	//******************************************************
	//******************************************************
	
	/**
	 * Class Purpose
	 *
	 * @author Paul Reitz
	 */
	public class LpMouse
	{
		protected var _mouseInput:LpInputVO;
		protected var _x:Number;
		protected var _y:Number;
		
		
		//******************************************************
		//******************************************************
		
		
		public function LpMouse()
		{
			_mouseInput = new LpInputVO();
		}
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function mouseDown():void
		{
			_mouseInput.value = 2;
		} // END FUNCTION mouseDown
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function mouseUp():void
		{
			_mouseInput.value = -1;
		} // END FUNCTION mouseUp
		
		
		
		//******************************************************
		
		
		/**
		 * The .
		 *
		 * @return	The .
		 */
		public function get justPressed():Boolean
		{
			return _mouseInput.justPressed;
		} // END GET justPressed
		
		
		
		//******************************************************
		
		
		/**
		 * The .
		 *
		 * @return	The .
		 */
		public function get justReleased():Boolean
		{
			return _mouseInput.justReleased;
		} // END GET justReleased
		
		
		
		//******************************************************
		
		
		/**
		 * The .
		 *
		 * @return	The .
		 */
		public function get isDown():Boolean
		{
			return _mouseInput.down;
		} // END GET isDown
		
		
		
		//******************************************************
		
		
		/**
		 * The .
		 *
		 * @return	The .
		 */
		public function get x():Number
		{
			return _x;
		} // END GET x
		
		
		
		//******************************************************
		
		
		/**
		 * The .
		 *
		 * @return	The .
		 */
		public function get y():Number
		{
			return _y;
		} // END GET y
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function update(nX:Number, nY:Number):void
		{
			_x = nX;
			_y = nY;
			_mouseInput.update();
		} // END FUNCTION update
		
		
		
		//******************************************************
		
		
		/**
		 * The .
		 *
		 * @return	The .
		 */
		public function get location():Point
		{
			return new Point(_x, _y);
		} // END GET locattion
		//******************************************************
		//******************************************************
	} // END CLASS LpMouse
} // END PACKAGE