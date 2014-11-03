package com.lillypad.core
{
	import flash.display.Sprite;
	import flash.geom.Point;
	
	
	
	//******************************************************
	//******************************************************
	
	/**
	 * Class Purpose
	 *
	 * @author Paul Reitz
	 */
	public class LpDisplayObject extends Sprite
	{
		protected var _center:Boolean;
		
		
		//******************************************************
		//******************************************************
		
		
		public function LpDisplayObject()
		{
			
		}
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function update():void
		{
			
		} // END FUNCTION update
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function setPosition(nX:Number, nY:Number):void
		{
			this.x = nX;
			this.y = nY;
		} // END FUNCTION setPosition
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function containsPoint(loc:Point):Boolean
		{
			if (_center)
			{
				return ((loc.x >= x - centerX && loc.x <= (x - centerX + width)) && (loc.y >= y - centerY && loc.y <= (y - centerY + height)));
			}
//			trace("check not centered: mouse x: " + loc.x + ", mouse y: " + loc.y + ", x: " + x + ", y: " + y + " rX: " + (x + width) + ", rY: " + (y + height));
			return ((loc.x >= x && loc.x <= width) && (loc.y >= y && loc.y <= height));
		} // END FUNCTION containsPoint
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function destroy():void
		{
			
		} // END FUNCTION destroy
		
		//******************************************************
		
		
		/**
		 * The .
		 * 
		 * @param	bCenter	The .
		 * @return				The .
		 */
		public function get center():Boolean
		{
			return _center;
		} // END GET center
		
		
		//******************************************************
		
		
		public function set center(bCenter:Boolean):void
		{
			_center = bCenter;
		} // END SET center
		
		
		//******************************************************
		
		
		/**
		 * The .
		 *
		 * @return	The .
		 */
		public function get centerX():Number
		{
			return width * 0.5;
		} // END GET centerX
		
		
		
		//******************************************************
		
		
		/**
		 * The .
		 *
		 * @return	The .
		 */
		public function get centerY():Number
		{
			return height * 0.5;
		} // END GET centerY
		
		//******************************************************
		//******************************************************
	} // END CLASS LpDisplayObject
} // END PACKAGE