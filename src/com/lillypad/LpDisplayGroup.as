package com.lillypad
{
	import com.lillypad.ui.core.LpComponent;
	import com.lillypad.core.LpDisplayObject;
	
	import flash.display.BitmapData;
	import flash.geom.Matrix;
	import flash.geom.Point;
	
	
	
	//******************************************************
	//******************************************************
	
	/**
	 * Class Purpose
	 *
	 * @author Paul Reitz
	 */
	public class LpDisplayGroup extends LpDisplayObject
	{
		protected var _objects:Vector.<LpDisplayObject>;
		protected var _locations:Vector.<Point>;
		
		
		//******************************************************
		//******************************************************
		
		
		public function LpDisplayGroup()
		{
			super();
			_objects = new Vector.<LpDisplayObject>();
			_locations = new Vector.<Point>();
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
			_locations.push(new Point(obj.x, obj.y));
			obj.x += this.x;
			obj.y += this.y;
		} // END FUNCTION add
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function updateObjects():void
		{
			var count:int = _objects.length;
			for (var i:int = 0; i < count; ++i) 
			{
				_objects[i].update();
				if (_objects[i] is LpComponent) 
				{
					(_objects[i] as LpComponent).updateUI();
				} // END IF
				if (_objects[i] is LpDisplayGroup) 
				{
					(_objects[i] as LpDisplayGroup).updateObjects();
				} // END IF
			} // END FOR
		} // END FUNCTION updateObjects
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function getObject(index:int):LpDisplayObject
		{
			if (index >= 0 && index < _objects.length) 
			{
				return _objects[index];
			} // END IF
			return null;
		} // END FUNCTION getObject
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function draw(data:BitmapData, xOffset:Number = 0, yOffset:Number = 0):void
		{
			var matrix:Matrix = new Matrix();
			var count:int = _objects.length;
			for (var i:int = 0; i < count; ++i) 
			{
				if (_objects[i] is LpDisplayGroup) 
				{
					(_objects[i] as LpDisplayGroup).draw(data, xOffset, yOffset);
				}
				else
				{
					if (_objects[i].visible) 
					{
						matrix.createBox(1, 1, 0, _objects[i].x + xOffset, _objects[i].y + yOffset);
						data.draw(_objects[i], matrix);
					} // END IF
				} // END IF
			} // END FOR
		} // END FUNCTION draw
		
		//******************************************************
		
		
		/**
		 * The .
		 *
		 * @return	The .
		 */
		public function get size():int
		{
			return _objects.length;
		} // END GET size
		
		
		//******************************************************
		
		
		/**
		 * The .
		 *
		 * @param	param1 The .
		 */
		public override function set x(value:Number):void
		{
			super.x = value;
			var count:int = _objects.length;
			for (var i:int = 0; i < count; ++i) 
			{
				_objects[i].x = _locations[i].x + this.x;
			} // END FOR
		} // END SET x
		
		//******************************************************
		
		
		/**
		 * The .
		 *
		 * @param	param1 The .
		 */
		public override function set y(value:Number):void
		{
			super.y = value;
			var count:int = _objects.length;
			for (var i:int = 0; i < count; ++i) 
			{
				_objects[i].y = _locations[i].y + this.y;
			} // END FOR
		} // END SET y
		
		
		//******************************************************
		//******************************************************
	} // END CLASS LpDisplayGroup
} // END PACKAGE