package com.lillypad.input
{
	
	
	//******************************************************
	//******************************************************
	
	/**
	 * Class Purpose
	 *
	 * @author Paul Reitz
	 */
	public class LpInputVO
	{
		protected var _value:int;
		
		
		//******************************************************
		//******************************************************
		
		
		public function LpInputVO()
		{
			_value = 0;
		}
		
		//******************************************************
		
		
		/**
		 * The .
		 * 
		 * @param	bDown	The .
		 * @return				The .
		 */
		public function get down():Boolean
		{
			return _value > 0;
		} // END GET down
		
		
		//******************************************************
		
		
		/**
		 * The .
		 * 
		 * @param	nValue	The .
		 * @return				The .
		 */
		public function get value():int
		{
			return _value;
		} // END GET value
		
		
		//******************************************************
		
		
		public function set value(nValue:int):void
		{
			if (_value > 0 && nValue == 2) 
			{
				
			}
			else
			{
				_value = nValue;
			} // END IF
		} // END SET value
		
		
		
		//******************************************************
		
		
		/**
		 * The .
		 *
		 * @return	The .
		 */
		public function get justPressed():Boolean
		{
			return _value == 2;
		} // END GET justPressed
		
		
		
		//******************************************************
		
		
		/**
		 * The .
		 *
		 * @return	The .
		 */
		public function get justReleased():Boolean
		{
			return _value == -1;
		} // END GET justReleased
		
		
		//******************************************************
		
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function update():void
		{
			if (_value > 0) { _value = 1; }
			else if (_value == -1) { _value = 0; }
		} // END FUNCTION update
		
		//******************************************************
		//******************************************************
	} // END CLASS LpKeyVO
} // END PACKAGE