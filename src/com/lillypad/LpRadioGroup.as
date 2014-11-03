package com.lillypad
{
	import com.lillypad.core.LpDisplayObject;
	import com.lillypad.ui.LpToggleButton;
	
	
	//******************************************************
	//******************************************************
	
	/**
	 * Class Purpose
	 *
	 * @author Paul Reitz
	 */
	public class LpRadioGroup extends LpDisplayObject
	{
		protected var _buttons:Vector.<LpToggleButton>;
		protected var _index:int;
		
		
		//******************************************************
		//******************************************************
		
		
		public function LpRadioGroup()
		{
			super();
			_buttons = new Vector.<LpToggleButton>();
			_index = -1;
		}
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function add(button:LpToggleButton):void
		{
			_buttons.push(button);
		} // END FUNCTION add
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public override function update():void
		{
			var count:int = _buttons.length;
			for (var i:int = 0; i < count; ++i) 
			{
				if (_buttons[i].justPressed) 
				{
					_index = i;
				} // END IF
			} // END FOR
			
			for (var j:int = 0; j < count; ++j) 
			{
				_buttons[j].selected = (j == _index);
			} // END FOR
		} // END FUNCTION update
		
		
		
		//******************************************************
		
		
		/**
		 * The .
		 *
		 * @return	The .
		 */
		public function get selected():int
		{
			return _index;
		} // END GET selected
		
		
		
		//******************************************************
		
		
		/**
		 * The .
		 *
		 * @return	The .
		 */
		public function get selectedValue():String
		{
			if (_index > -1 && _index < _buttons.length) 
			{
				return _buttons[_index].value;
			} // END IF
			return "";
		} // END GET selectedValue
		
		
		
		//******************************************************
		
		
		/**
		 * The .
		 *
		 * @return	The .
		 */
		public function get justPressed():Boolean
		{
			var count:int = _buttons.length;
			for (var i:int = 0; i < count; ++i) 
			{
				if (_buttons[i].justPressed) 
				{
					return true;
				} // END IF
			} // END FOR
			return false;
		} // END GET justPressed
		
		
		
		//******************************************************
		
		
		/**
		 * The .
		 *
		 * @return	The .
		 */
		public function get justReleased():Boolean
		{
			var count:int = _buttons.length;
			for (var i:int = 0; i < count; ++i) 
			{
				if (_buttons[i].justReleased) 
				{
					return true;
				} // END IF
			} // END FOR
			return false;
		} // END GET justReleased
		//******************************************************
		//******************************************************
	} // END CLASS LpRadioGroup
} // END PACKAGE