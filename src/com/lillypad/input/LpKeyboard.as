package com.lillypad.input
{
	import com.lillypad.LP;
	
	
	//******************************************************
	//******************************************************
	
	/**
	 * Class Purpose
	 *
	 * @author Paul Reitz
	 */
	public class LpKeyboard
	{
		protected var _keys:Array;
		protected var _sets:Array;
		protected var _lastDown:int;
		protected var _lastUp:int;
		
		
		//******************************************************
		//******************************************************
		
		
		public function LpKeyboard()
		{
			_keys = new Array();
			_keys[LpKeys.BACKSPACE] = new LpInputVO();
			_keys[LpKeys.TAB] = new LpInputVO();
			_keys[LpKeys.ENTER] = new LpInputVO();
			_keys[LpKeys.COMMAND] = new LpInputVO();
			_keys[LpKeys.SHIFT] = new LpInputVO();
			_keys[LpKeys.CONTROL] = new LpInputVO();
			_keys[LpKeys.ALTERNATE] = new LpInputVO();
			_keys[LpKeys.CAPS_LOCK] = new LpInputVO();
			_keys[LpKeys.ESCAPE] = new LpInputVO();
			_keys[LpKeys.SPACE] = new LpInputVO();
			_keys[LpKeys.PAGE_UP] = new LpInputVO();
			_keys[LpKeys.PAGE_DOWN] = new LpInputVO();
			_keys[LpKeys.END] = new LpInputVO();
			_keys[LpKeys.HOME] = new LpInputVO();
			_keys[LpKeys.LEFT] = new LpInputVO();
			_keys[LpKeys.UP] = new LpInputVO();
			_keys[LpKeys.RIGHT] = new LpInputVO();
			_keys[LpKeys.DOWN] = new LpInputVO();
			_keys[LpKeys.INSERT] = new LpInputVO();
			_keys[LpKeys.DELETE] = new LpInputVO();
			_keys[LpKeys.NUMBER_0] = new LpInputVO();
			_keys[LpKeys.NUMBER_1] = new LpInputVO();
			_keys[LpKeys.NUMBER_2] = new LpInputVO();
			_keys[LpKeys.NUMBER_3] = new LpInputVO();
			_keys[LpKeys.NUMBER_4] = new LpInputVO();
			_keys[LpKeys.NUMBER_5] = new LpInputVO();
			_keys[LpKeys.NUMBER_6] = new LpInputVO();
			_keys[LpKeys.NUMBER_7] = new LpInputVO();
			_keys[LpKeys.NUMBER_8] = new LpInputVO();
			_keys[LpKeys.NUMBER_9] = new LpInputVO();
			_keys[LpKeys.A] = new LpInputVO();
			_keys[LpKeys.B] = new LpInputVO();
			_keys[LpKeys.C] = new LpInputVO();
			_keys[LpKeys.D] = new LpInputVO();
			_keys[LpKeys.E] = new LpInputVO();
			_keys[LpKeys.F] = new LpInputVO();
			_keys[LpKeys.G] = new LpInputVO();
			_keys[LpKeys.H] = new LpInputVO();
			_keys[LpKeys.I] = new LpInputVO();
			_keys[LpKeys.J] = new LpInputVO();
			_keys[LpKeys.K] = new LpInputVO();
			_keys[LpKeys.L] = new LpInputVO();
			_keys[LpKeys.M] = new LpInputVO();
			_keys[LpKeys.N] = new LpInputVO();
			_keys[LpKeys.O] = new LpInputVO();
			_keys[LpKeys.P] = new LpInputVO();
			_keys[LpKeys.Q] = new LpInputVO();
			_keys[LpKeys.R] = new LpInputVO();
			_keys[LpKeys.S] = new LpInputVO();
			_keys[LpKeys.T] = new LpInputVO();
			_keys[LpKeys.U] = new LpInputVO();
			_keys[LpKeys.V] = new LpInputVO();
			_keys[LpKeys.W] = new LpInputVO();
			_keys[LpKeys.X] = new LpInputVO();
			_keys[LpKeys.Y] = new LpInputVO();
			_keys[LpKeys.Z] = new LpInputVO();
			_keys[LpKeys.NUMPAD_0] = new LpInputVO();
			_keys[LpKeys.NUMPAD_1] = new LpInputVO();
			_keys[LpKeys.NUMPAD_2] = new LpInputVO();
			_keys[LpKeys.NUMPAD_3] = new LpInputVO();
			_keys[LpKeys.NUMPAD_4] = new LpInputVO();
			_keys[LpKeys.NUMPAD_5] = new LpInputVO();
			_keys[LpKeys.NUMPAD_6] = new LpInputVO();
			_keys[LpKeys.NUMPAD_7] = new LpInputVO();
			_keys[LpKeys.NUMPAD_8] = new LpInputVO();
			_keys[LpKeys.NUMPAD_9] = new LpInputVO();
			_keys[LpKeys.NUMPAD_MULTIPLY] = new LpInputVO();
			_keys[LpKeys.NUMPAD_PLUS] = new LpInputVO();
			_keys[LpKeys.NUMPAD_ENTER] = new LpInputVO();
			_keys[LpKeys.NUMPAD_MINUS] = new LpInputVO();
			_keys[LpKeys.NUMPAD_DECIMAL] = new LpInputVO();
			_keys[LpKeys.NUMPAD_DIVIDE] = new LpInputVO();
			_keys[LpKeys.F1] = new LpInputVO();
			_keys[LpKeys.F2] = new LpInputVO();
			_keys[LpKeys.F3] = new LpInputVO();
			_keys[LpKeys.F4] = new LpInputVO();
			_keys[LpKeys.F5] = new LpInputVO();
			_keys[LpKeys.F6] = new LpInputVO();
			_keys[LpKeys.F7] = new LpInputVO();
			_keys[LpKeys.F8] = new LpInputVO();
			_keys[LpKeys.F9] = new LpInputVO();
			_keys[LpKeys.F10] = new LpInputVO();
			_keys[LpKeys.F11] = new LpInputVO();
			_keys[LpKeys.F12] = new LpInputVO();
			_keys[LpKeys.F13] = new LpInputVO();
			_keys[LpKeys.F14] = new LpInputVO();
			_keys[LpKeys.F15] = new LpInputVO();
			_keys[LpKeys.SEMICOLON] = new LpInputVO();
			_keys[LpKeys.EQUAL] = new LpInputVO();
			_keys[LpKeys.COMMA] = new LpInputVO();
			_keys[LpKeys.MINUS] = new LpInputVO();
			_keys[LpKeys.PERIOD] = new LpInputVO();
			_keys[LpKeys.SLASH] = new LpInputVO();
			_keys[LpKeys.BACKQUOTE] = new LpInputVO();
			_keys[LpKeys.LEFT_BRACKET] = new LpInputVO();
			_keys[LpKeys.BACK_SLASH] = new LpInputVO();
			_keys[LpKeys.RIGHT_BRACKET] = new LpInputVO();
			_keys[LpKeys.QUOTE] = new LpInputVO();
			
			_sets = new Array();
			
			_lastDown = -1;
			_lastUp = -1;
		}
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function addSet(name:String, ... args):void
		{
			_sets[name] = args;
		} // END FUNCTION addSet
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function update():void
		{
			for (var name:String in _keys) 
			{
				(_keys[name] as LpInputVO).update();
			}
			
		} // END FUNCTION update
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function setKeyDown(key:int):void
		{
			var name:String = LP.keys.getKeyName(key);
			if (name != "UNDEFINED" && _keys[name]) 
			{
				(_keys[name] as LpInputVO).value = 2;
				_lastDown = key;
			} // END IF
		} // END FUNCTION setKeyDown
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function setKeyUp(key:int):void
		{
			var name:String = LP.keys.getKeyName(key);
			if (name != "UNDEFINED" && _keys[name]) 
			{
				(_keys[name] as LpInputVO).value = -1;
				_lastUp = key;
			} // END IF
		} // END FUNCTION setKeyUp
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function isDown(key:String):Boolean
		{
			if (_keys[key]) 
			{
				return (_keys[key] as LpInputVO).down;
			}
			else if (_sets[key]) 
			{
				var set:Array = _sets[key] as Array;
				var count:int = set.length;
				for (var i:int = 0; i < count; ++i) 
				{
					if (_keys[set[i]] && (_keys[set[i]] as LpInputVO).down) 
					{
						return true;
					} // END IF
				} // END FOR
			} // END IF
			return false;
		} // END FUNCTION isDown
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function justPressed(key:String):Boolean
		{
			if (_keys[key]) 
			{
				return (_keys[key] as LpInputVO).justPressed;
			}
			else if (_sets[key])
			{
				var set:Array = _sets[key] as Array;
				var count:int = set.length;
				for (var i:int = 0; i < count; ++i) 
				{
					if (_keys[set[i]] && (_keys[set[i]] as LpInputVO).justPressed) 
					{
						return true;
					} // END IF
				} // END FOR
			} // END IF
			return false;
		} // END FUNCTION justPressed
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function justReleased(key:String):Boolean
		{
			if (_keys[key]) 
			{
				return (_keys[key] as LpInputVO).justReleased;
			}
			else if (_sets[key])
			{
				var set:Array = _sets[key] as Array;
				var count:int = set.length;
				for (var i:int = 0; i < count; ++i) 
				{
					if (_keys[set[i]] && (_keys[set[i]] as LpInputVO).justReleased) 
					{
						return true;
					} // END IF
				} // END FOR
			} // END IF
			return false;
		} // END FUNCTION justReleased
		
		//******************************************************
		
		
		/**
		 * The .
		 * 
		 * @param	nKey	The .
		 * @return				The .
		 */
		public function get lastDown():int
		{
			return _lastDown;
		} // END GET lastDown
		
		
		//******************************************************
		
		
		public function set lastDown(nKey:int):void
		{
			_lastDown = nKey;
		} // END SET lastDown
		
		//******************************************************
		
		
		/**
		 * The .
		 * 
		 * @param	nKey	The .
		 * @return				The .
		 */
		public function get lastUp():int
		{
			return _lastUp;
		} // END GET lastUp
		
		
		//******************************************************
		
		
		public function set lastUp(nKey:int):void
		{
			_lastUp = nKey;
		} // END SET lastUp
		
		
		//******************************************************
		//******************************************************
	} // END CLASS LpKeyboard
} // END PACKAGE