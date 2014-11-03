package com.lillypad
{
	import com.lillypad.core.LpBaseScene;
	import com.lillypad.ui.core.LpComponent;
	import com.lillypad.core.LpDisplayObject;
	
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.geom.Matrix;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	
	
	
	//******************************************************
	//******************************************************
	
	/**
	 * Class Purpose
	 *
	 * @author Paul Reitz
	 */
	public class LpScene extends LpBaseScene
	{
		protected var _target:LpDisplayObject;
		protected var _mapDisplay:LpDisplayObject;
		protected var _xOffset:Number;
		protected var _yOffset:Number;
		
		//******************************************************
		//******************************************************
		
		
		public function LpScene()
		{
			super();
			_xOffset = 0;
			_yOffset = 0;
		}
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public override function drawScene():void
		{
			setViewPointCenter();
			var data:BitmapData = new BitmapData(LP.winSize.width, LP.winSize.height, true, 0x00000000);
			var count:int = _objects.length;
			for (var i:int = 0; i < count; ++i) 
			{
				(_objects[i] as LpDisplayObject).update();
				if (_objects[i] is LpComponent) 
				{
					(_objects[i] as LpComponent).updateUI();
				} // END IF
				if (_objects[i] is LpDisplayGroup) 
				{
					(_objects[i] as LpDisplayGroup).updateObjects();
					(_objects[i] as LpDisplayGroup).draw(data, _xOffset, _yOffset);
				}
				else
				{
					if (_objects[i].visible) 
					{
						_matrix.createBox(1, 1, 0, _objects[i].x + _xOffset, _objects[i].y + _yOffset);
						data.draw(_objects[i], _matrix);
					} // END IF
				} // END IF
			} // END FOR
			_displayMap.bitmapData = data;
		} // END FUNCTION drawScene
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		protected function setViewPointCenter():void
		{
			if (_target && _mapDisplay) 
			{
				var nX:int = Math.max(_target.x, LP.centerX);
				var nY:int = Math.max(_target.y, LP.centerY);
				
				nX = Math.min(nX, _mapDisplay.width - LP.centerX);
				nY = Math.min(nY, _mapDisplay.height - LP.centerY);
				
				var actualPosition:Point = new Point(nX, nY);
				var centerOfView:Point = new Point(LP.centerX, LP.centerY);
				var viewPoint:Point = new Point(centerOfView.x - actualPosition.x, centerOfView.y - actualPosition.y);
				_xOffset = viewPoint.x;
				_yOffset = viewPoint.y;
			} // END IF
		} // END FUNCTION setViewPointCenter
		
		//******************************************************
		
		
		/**
		 * The .
		 * 
		 * @param	oDisplay	The .
		 * @return				The .
		 */
		protected function get cameraTarget():LpDisplayObject
		{
			return _target;
		} // END GET cameraTarget
		
		
		//******************************************************
		
		
		protected function set cameraTarget(oDisplay:LpDisplayObject):void
		{
			_target = oDisplay;
		} // END SET cameraTarget
		
		//******************************************************
		
		
		/**
		 * The .
		 * 
		 * @param	oDisplay	The .
		 * @return				The .
		 */
		protected function get mapDisplay():LpDisplayObject
		{
			return _mapDisplay;
		} // END GET mapDisplay
		
		
		//******************************************************
		
		
		protected function set mapDisplay(oDisplay:LpDisplayObject):void
		{
			_mapDisplay = oDisplay;
		} // END SET mapDisplay
		
		
		//******************************************************
		//******************************************************
	} // END CLASS LpScene
} // END PACKAGE