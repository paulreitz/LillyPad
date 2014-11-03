package com.lillypad.ui
{
	import flash.geom.Point;
	import com.lillypad.LP;
	
	
	//******************************************************
	//******************************************************
	
	/**
	 * Class Purpose
	 *
	 * @author Paul Reitz
	 */
	public class LpToggleButton extends LpButton
	{
		protected var _unselectedUp:String;
		protected var _selectedUp:String;
		protected var _selectedOver:String;
		protected var _unselectedOver:String;
		protected var _selected:Boolean;
		protected var _value:String;
		
		
		//******************************************************
		//******************************************************
		
		
		public function LpToggleButton(Graphic:Class, frames:Object, ...states)
		{
			super(Graphic, frames);
			var buttonStates:Array = (states)? states : new Array();
			var n:int = buttonStates.length;
			_upState = (n > 0)? buttonStates[0] : "up";
			_overState = (n > 1)? buttonStates[1] : "over";
			_downState = (n > 2)? buttonStates[2] : "down";
			
			_unselectedUp = _upState;
			_unselectedOver = _overState;
			_selectedUp = (n > 3)? buttonStates[3] : "selected";
			_selectedOver = _downState;
			
			showFrame(_upState);
			selected = false;
			_value = "";
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
					selected = !selected;
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
		 * The .
		 * 
		 * @param	bSelected	The .
		 * @return				The .
		 */
		public function get selected():Boolean
		{
			return _selected;
		} // END GET selected
		
		
		//******************************************************
		
		
		public function set selected(bSelected:Boolean):void
		{
			_selected = bSelected;
			_upState = (_selected)? _selectedUp : _unselectedUp;
			_overState = (_selected)? _selectedOver : _unselectedOver;
		} // END SET selected
		
		//******************************************************
		
		
		/**
		 * The .
		 * 
		 * @param	sValue	The .
		 * @return				The .
		 */
		public function get value():String
		{
			return _value;
		} // END GET value
		
		
		//******************************************************
		
		
		public function set value(sValue:String):void
		{
			_value = sValue;
		} // END SET value
		
		
		//******************************************************
		//******************************************************
	} // END CLASS LpToggleButton
} // END PACKAGE