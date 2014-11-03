package com.lillypad.anim
{
	import flash.geom.Rectangle;
	
	
	//******************************************************
	//******************************************************
	
	/**
	 * Value oblect for a single frame of a sprite sheet. The information stored in this object is used to draw the frame to the sprite.
	 *
	 * @author Paul Reitz
	 */
	public class LpSpriteFrame
	{
		protected var _name:String;
		protected var _x:Number;
		protected var _y:Number;
		protected var _width:Number;
		protected var _height:Number;
		protected var _rotated:Boolean;
		protected var _clip:Rectangle;
		
		
		//******************************************************
		//******************************************************
		
		/**
		 * Creates a value object for a single frame.
		 * 
		 * @param	frame	A JSON object describing the dimensions and properties of the frame.
		 */
		public function LpSpriteFrame(frame:Object)
		{
			if (frame.frame) 
			{
				var frameData:Object = frame.frame;
				_name = "";
				_x = 0;
				_y = 0;
				_width = 0;
				_height = 0;
				_rotated = false;
				
				if (frameData.x) 
				{
					_x = Number(frameData.x);
				} // END IF
				
				if (frameData.y) 
				{
					_y = Number(frameData.y);
				} // END IF
				
				if (frameData.w) 
				{
					_width = Number(frameData.w);
				} // END IF
				
				if (frameData.h) 
				{
					_height = Number(frameData.h);
				} // END IF
				
			} // END IF
			if (frame.rotated) 
			{
				_rotated = frame.rotated;
			} // END IF
			_clip = (_rotated)? new Rectangle(0, 0, _height, _width) : new Rectangle(0, 0, _width, _height);
//			_clip = new Rectangle(0, 0, _width, _height);
		}
		
		//******************************************************
		
		
		/**
		 * The name associated with this frame.
		 * 
		 * @param	sName	The name associated with this frame.
		 * @return			The name associated with this frame.
		 */
		public function get name():String
		{
			return _name;
		} // END GET name
		
		
		//******************************************************
		
		
		public function set name(sName:String):void
		{
			_name = sName;
		} // END SET name
		
		//******************************************************
		
		
		/**
		 * The horizontal position where this frame is located on the sprite sheet.
		 * 
		 * @param	nX	The horizontal position where this frame is located on the sprite sheet.
		 * @return		The horizontal position where this frame is located on the sprite sheet.
		 */
		public function get x():Number
		{
			return _x;
		} // END GET x
		
		
		//******************************************************
		
		
		public function set x(nX:Number):void
		{
			_x = nX;
		} // END SET x
		
		//******************************************************
		
		
		/**
		 * The vertical position where this frame is located on the sprite sheet.
		 * 
		 * @param	nY	The vertical position where this frame is located on the sprite sheet.
		 * @return		The vertical position where this frame is located on the sprite sheet.
		 */
		public function get y():Number
		{
			return _y;
		} // END GET y
		
		
		//******************************************************
		
		
		public function set y(nY:Number):void
		{
			_y = nY;
		} // END SET y
		
		//******************************************************
		
		
		/**
		 * The width of the frame.
		 * 
		 * @param	nWidth	The width of the frame.
		 * @return			The width of the frame.
		 */
		public function get width():Number
		{
			return _width;
		} // END GET width
		
		
		//******************************************************
		
		
		public function set width(nWidth:Number):void
		{
			_width = nWidth;
		} // END SET width
		
		//******************************************************
		
		
		/**
		 * The height of the frame.
		 * 
		 * @param	h	The height of the frame.
		 * @return		The height of the frame.
		 */
		public function get height():Number
		{
			return _height;
		} // END GET height
		
		
		//******************************************************
		
		
		public function set height(h:Number):void
		{
			_height = h;
		} // END SET height
		
		
		//******************************************************
		
		
		/**
		 * Whether or not the frame was rotated on the sprite sheet. Some frames may be rotated in order to compact the sprite sheet
		 * into a smaller image size.
		 * 
		 * @param	r	Whether or not the frame was rotated on the sprite sheet.
		 * @return		Whether or not the frame was rotated on the sprite sheet.
		 */
		public function get rotated():Boolean
		{
			return _rotated;
		} // END GET rotated
		
		
		//******************************************************
		
		
		public function set rotated(r:Boolean):void
		{
			_rotated = r;
		} // END SET rotated
		
		
		
		//******************************************************
		
		
		/**
		 * A rectangle object used to pull the frame off of the sprite sheet.
		 *
		 * @return	The dimensions and location of the frame on the sprite sheet.
		 */
		public function get clip():Rectangle
		{
			return _clip;
		} // END GET clip
		
		
		//******************************************************
		//******************************************************
	} // END CLASS LpSpriteFrame
} // END PACKAGE