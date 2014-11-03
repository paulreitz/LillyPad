package com.lillypad.tmx
{
	
	
	//******************************************************
	//******************************************************
	
	/**
	 * Class Purpose
	 *
	 * @author Paul Reitz
	 */
	public class TmxObjectLayer extends TmxLayer
	{
		protected var _objects:Array;
		
		
		//******************************************************
		//******************************************************
		
		
		public function TmxObjectLayer(data:Object)
		{
			super(data);
			_objects = new Array();
			if (data["objects"]) 
			{
				var objectList:Array = data["objects"];
				var count:int = objectList.length;
				for (var i:int = 0; i < count; ++i) 
				{
					if (objectList[i]["name"]) 
					{
						var sName:String = String(objectList[i]["name"]);
						_objects[sName] = new TmxObject(objectList[i]);
					} // END IF
				} // END FOR
			} // END IF
		}
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function getObjectByName(key:String):TmxObject
		{
			if (_objects[key]) 
			{
				return _objects[key];
			} // END IF
			return null;
		} // END FUNCTION getObjectByName
		
		//******************************************************
		//******************************************************
	} // END CLASS TmxObjectLayer
} // END PACKAGE