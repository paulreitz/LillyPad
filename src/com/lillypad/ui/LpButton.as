package com.lillypad.ui
{
	import com.lillypad.ui.core.LpComponent;
	
	import flash.geom.Point;
	import com.lillypad.LP;
	
	
	
	//******************************************************
	//******************************************************
	
	/**
	 * Class Purpose
	 *
	 * @author Paul Reitz
	 */
	public class LpButton extends LpComponent
	{
		protected var _upState:String;
		protected var _overState:String;
		protected var _downState:String;
		protected var _state:int;
		
		
		//******************************************************
		//******************************************************
		
		
		public function LpButton(Graphic:Class, frames:Object, ... states)
		{
			super(Graphic, frames);
			_state = 0;
			var buttonStates:Array = (states)? states : new Array();
			var n:int = buttonStates.length;
			_upState = (n > 0)? buttonStates[0] : "up";
			_overState = (n > 1)? buttonStates[1] : "over";
			_downState = (n > 2)? buttonStates[2] : "down";
			showFrame(_upState);
		}
		
		
		//******************************************************
		
		
		override public function updateUI():void
		{
			if (_state > 0) { _state = 1; }
			else if (_state < 0) { _state = 0; }
			var click:Point = new Point(LP.mouse.x, LP.mouse.y);
			if (containsPoint(click)) 
			{
				if (LP.mouse.justPressed) 
				{
					if (_state != 2) { _state = 2; }
					buttonDown();
				} // END IF
				
				if (LP.mouse.justReleased) 
				{
					_state = -1;
					buttonUp();
				} // END IF
				
				if (LP.mouse.isDown) 
				{
					showFrame(_downState);
				}
				else
				{
					showFrame(_overState);
				} // END IF
			}
			else
			{
				showFrame(_upState);
			} // END IF
		}
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function buttonDown():void
		{
			
		} // END FUNCTION buttonDown
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function buttonUp():void
		{
			
		} // END FUNCTION buttonUp
		
		
		
		//******************************************************
		
		
		/**
		 * The .
		 *
		 * @return	The .
		 */
		public function get justPressed():Boolean
		{
			return _state == 2;
		} // END GET justPressed
		
		
		
		//******************************************************
		
		
		/**
		 * The .
		 *
		 * @return	The .
		 */
		public function get justReleased():Boolean
		{
			return _state == -1;
		} // END GET justReleased
		
		
		
		//******************************************************
		
		
		/**
		 * The .
		 *
		 * @return	The .
		 */
		public function get isDown():Boolean
		{
			return _state > 0;
		} // END GET isDown
		
		
		//******************************************************
		//******************************************************
	} // END CLASS LpButton
} // END PACKAGE