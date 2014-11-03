package com.lillypad
{
	import flash.utils.ByteArray;
	
	
	//******************************************************
	//******************************************************
	
	/**
	 * Class Purpose
	 *
	 * @author Paul Reitz
	 */
	public class LpUtils
	{
		
		
		//******************************************************
		//******************************************************
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public static function getJsonObject(Json:Class):Object
		{
			var bytes:ByteArray = new Json() as ByteArray;
			var sData:String = bytes.readUTFBytes(bytes.length);
			var oData:Object = JSON.parse(sData);
			return oData;
		} // END FUNCTION getJsonObject
		
		//******************************************************
		//******************************************************
	} // END CLASS PlUtils
} // END PACKAGE