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
		public static const BUTTON_ONE:String = "LpMouse.buttonOne";
		public static const BUTTON_TWO:String = "LpMouse.buttonTwo";
		public static const BUTTON_THREE:String = "LpMouse.buttonThree";
		
		protected var _buttons:Array;
		protected var _keys:Vector.<String>;
		protected var _x:Number;
		protected var _y:Number;
		
		
		//******************************************************
		//******************************************************
		
		
		public function LpMouse()
		{
			_buttons = new Array();
			_keys = new Vector.<String>();
			
			_keys.push(BUTTON_ONE);
			_keys.push(BUTTON_TWO);
			_keys.push(BUTTON_THREE);
		}
		
		protected function getButtonName(index:int):String
		{
			if (index >= 0 && index < _keys.length)
			{
				return _keys[index];
			}
			return BUTTON_ONE;
		}
		
		protected function getButton(key:String):LpInputVO
		{
			if (_buttons[key])
			{
				return _buttons[key] as LpInputVO;
			}
			var input:LpInputVO = new LpInputVO;
			_buttons[key] = input;
			return input;
		}
		
		protected function buttonIsSet(key:String):Boolean
		{
			return (_buttons[key] && _buttons[key] != undefined);
		}
		
		public function addButton(key:String):void
		{
			_keys.push(key);
		}
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function mouseDown(key:String = BUTTON_ONE):void
		{
			getButton(key).value = LpInputVO.INPUT_DOWN;
		} // END FUNCTION mouseDown
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function mouseUp(key:String = BUTTON_ONE):void
		{
			getButton(key).value = LpInputVO.INPUT_UP;
		} // END FUNCTION mouseUp
		
		
		
		//******************************************************
		
		
		/**
		 * The .
		 *
		 * @return	The .
		 */
		public function justPressed(key:String = BUTTON_ONE):Boolean
		{
			if (buttonIsSet(key))
			{
				return getButton(key).justPressed;
			}
			return false;
		} // END GET justPressed
		
		
		
		//******************************************************
		
		
		/**
		 * The .
		 *
		 * @return	The .
		 */
		public function justReleased(key:String = BUTTON_ONE):Boolean
		{
			if (buttonIsSet(key))
			{
				return getButton(key).justReleased;
			}
		} // END GET justReleased
		
		
		
		//******************************************************
		
		
		/**
		 * The .
		 *
		 * @return	The .
		 */
		public function isDown(key:String = BUTTON_ONE):Boolean
		{
			if (buttonIsSet(key))
			{
				return getButton(key).down;
			}
			return false;
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
			for each(key:String in _buttons)
			{
				getButton(key).update();
			}
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