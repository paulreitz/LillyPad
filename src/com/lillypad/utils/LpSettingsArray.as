package com.lillypad.utils
{
	
	
	//******************************************************
	//******************************************************
	
	/**
	 * Class Purpose
	 *
	 * @author Paul Reitz
	 */
	public class LpSettingsArray
	{
		private static var _instance:LpSettingsArray;
		private static var _allow:Boolean = false;
		
		private var _settings:Array;
		
		
		//******************************************************
		//******************************************************
		
		
		public function LpSettingsArray()
		{
			if (_allow) 
			{
				_settings = new Array();
			}
			else
			{
				throw new Error("ERROR: LpSettingsArray is a statically instantiated singleton. It can not be instantiated");
			} // END IF
		}
		
		
		
		//******************************************************
		
		
		/**
		 * The .
		 *
		 * @return	The .
		 */
		public static function get instance():LpSettingsArray
		{
			if (!_instance) 
			{
				_allow = true;
				_instance = new LpSettingsArray();
				_allow = false;
			} // END IF
			return _instance;
		} // END GET instance
		
		
		//******************************************************
		//******************************************************
	} // END CLASS LpSettingsArray
} // END PACKAGE