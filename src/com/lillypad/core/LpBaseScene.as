package com.lillypad.core
{
	import com.lillypad.LP;
	
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.geom.Matrix;
	import flash.geom.Rectangle;
	import com.lillypad.ui.core.LpComponent;
	
	
	//******************************************************
	//******************************************************
	
	/**
	 * Class Purpose
	 *
	 * @author Paul Reitz
	 */
	public class LpBaseScene extends LpDisplayObject
	{
		protected var _objects:Vector.<LpDisplayObject>;
		protected var _displayMap:Bitmap;
		protected var _matrix:Matrix;
		
		
		//******************************************************
		//******************************************************
		
		
		public function LpBaseScene()
		{
			_objects = new Vector.<LpDisplayObject>();
			_matrix = new Matrix();
			_displayMap = new Bitmap();
			addChild(_displayMap);
			scrollRect = new Rectangle(0, 0, LP.width, LP.height);
		}
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function add(obj:LpDisplayObject):void
		{
			_objects.push(obj);
		} // END FUNCTION add
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function remove(obj:LpDisplayObject):void
		{
			var index:int = _objects.indexOf(obj);
			if (index > -1) 
			{
				_objects.slice(index, index);
			} // END IF
		} // END FUNCTION remove
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function drawScene():void
		{
			var data:BitmapData = new BitmapData(LP.winSize.width, LP.winSize.height, true, 0x00000000);
			var count:int = _objects.length;
			for (var i:int = 0; i < count; ++i) 
			{
				(_objects[i] as LpDisplayObject).update();
				if (_objects[i] is LpComponent) 
				{
					(_objects[i] as LpComponent).updateUI();
				} // END IF
				_matrix.createBox(1, 1, 0, _objects[i].x, _objects[i].y);
				data.draw(_objects[i], _matrix);
			} // END FOR
			_displayMap.bitmapData = data;
		} // END FUNCTION drawScene
		
		
		//******************************************************
		//******************************************************
	} // END CLASS LpBaseScene
} // END PACKAGE