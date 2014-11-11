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
			_sets = new Array();
			
			_lastDown = -1;
			_lastUp = -1;
		}
		
		protected function getKey(key:String):LpInputVO
		{
			if (_keys[key] && _keys[key] != undefined)
			{
				return _keys[key] as LpInputVO;
			}
			var input:LpInputVO = new LpInputVO();
			_keys[key] = input;
			return input;
		}
		
		protected function keyIsSet(key:String):Boolean
		{
			return (_keys[key] && _keys[key] != undefined);
		}
		
		protected function setExists(key:String):Boolean
		{
			return (_sets[key] && _sets[key] != undefined);
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
				getKey(name).update();
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