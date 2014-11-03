package com.lillypad
{
	import com.lillypad.interfaces.LpStateListener;
	
	
	//******************************************************
	//******************************************************
	
	/**
	 * Class Purpose
	 *
	 * @author Paul Reitz
	 */
	public class LpState
	{
		public static const STATE_PAUSED:uint = 10001;
		
		private static var _listeners:Vector.<LpStateListener>;
		private static var _state:uint;
		private static var _paused:Boolean;
		
		
		
		//******************************************************
		//******************************************************
		
		
		public static function init():void
		{
			_listeners = new Vector.<LpStateListener>();
			_state = 0;
			_paused = false;
		}
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public static function addStateListener(listener:LpStateListener):void
		{
			_listeners.push(listener);
		} // END FUNCTION addStateListener
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public static function removeStateListener(listener:LpStateListener):void
		{
			var index:int = _listeners.indexOf(listener);
			if (index > -1 && index < _listeners.length) 
			{
				_listeners.splice(index, 1);
			} // END IF
		} // END FUNCTION removeStateListener
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public static function pause():void
		{
			_paused = true;
			var count:int = _listeners.length;
			for (var i:int = 0; i < count; ++i) 
			{
				_listeners[i].paused();
			} // END FOR
		} // END FUNCTION pause
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public static function resume():void
		{
			_paused = false;
			var count:int = _listeners.length;
			for (var i:int = 0; i < count; ++i) 
			{
				_listeners[i].resumed();
			} // END FOR
		} // END FUNCTION resume
		
		//******************************************************
		
		
		/**
		 * The .
		 * 
		 * @param	nState	The .
		 * @return				The .
		 */
		public static function get state():uint
		{
			if (_paused) 
			{
				return STATE_PAUSED;
			} // END IF
			return _state;
		} // END GET state
		
		//******************************************************
		
		
		public static function set state(nState:uint):void
		{
			if (nState != _state) 
			{
				var count:int = _listeners.length;
				for (var i:int = 0; i < count; ++i) 
				{
					_listeners[i].exitState();
				} // END FOR
				_state = nState;
				for (var j:int = 0; j < count; ++j) 
				{
					_listeners[j].enterState();
				} // END FOR
			} // END IF
		} // END SET state
		
		
		//******************************************************
		//******************************************************
	} // END CLASS LpState
} // END PACKAGE