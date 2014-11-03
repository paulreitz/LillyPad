package com.lillypad
{
	import flash.geom.Point;
	
	
	//******************************************************
	//******************************************************
	
	/**
	 * Class Purpose
	 *
	 * @author Paul Reitz
	 */
	public class LpMath
	{
		
		
		//******************************************************
		//******************************************************
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public static function degrees(radians:Number):Number
		{
			return radians * 180 / Math.PI;
		} // END FUNCTION degrees
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public static function radians(degrees:Number):Number
		{
			return degrees * Math.PI / 180;
		} // END FUNCTION radians
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public static function moveAtAngle(x:Number, y:Number, radians:Number, distance:Number):Point
		{
			var newX:Number = x + Math.sin(radians) * distance;
			var newY:Number = y + Math.cos(radians) * distance;
			return new Point(newX, newY);
		} // END FUNCTION moveAtAngle
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public static function distance(x1:Number, y1:Number, x2:Number, y2:Number):Number
		{
			var nDiffX:Number = x2 - x1;
			var nDiffY:Number = y2 - y1;
			var nDistance:Number = Math.sqrt((nDiffX * nDiffX) + (nDiffY * nDiffY));
			return nDistance;
		} // END FUNCTION distance
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public static function angleRadians(x1:Number, y1:Number, x2:Number, y2:Number):Number
		{
			var nDiffX:Number = x2 - x1;
			var nDiffY:Number = y2 - y1;
			var nAngle:Number = Math.atan2(nDiffY, nDiffX);
			return nAngle;
		} // END FUNCTION angleRadians
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public static function angleDegrees(x1:Number, y1:Number, x2:Number, y2:Number):Number
		{
			return degrees(angleRadians(x1, y1, x2, y2));
		} // END FUNCTION angleDegrees
		
		//******************************************************
		//******************************************************
	} // END CLASS LpMath
} // END PACKAGE