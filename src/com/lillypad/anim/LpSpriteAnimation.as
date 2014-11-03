package com.lillypad.anim
{
	
	
	//******************************************************
	//******************************************************
	
	/**
	 * Stores the information necessary for a sprite to play an animation.
	 *
	 * @author Paul Reitz
	 */
	public class LpSpriteAnimation
	{
		protected var _name:String;
		protected var _frameRate:Number;
		protected var _loop:Boolean;
		protected var _restoreOriginal:Boolean;
		protected var _frames:Vector.<String>;
		protected var _current:uint;
		
		
		//******************************************************
		//******************************************************
		
		/**
		 * Creates a new animation
		 * 
		 * @param	name		A string used to reference the animation.
		 * @param	frames		An array of frame names (in order) to use for the animation.
		 * @param	frameRate	The frame rate of the animation (can be different from the SWF frame rate).
		 * @param	loop		Whether to loop the animation or play it just once.
		 * @param	restore		This determines whether or not to display the first frame when the animation is stopped.
		 */
		public function LpSpriteAnimation(name:String, frames:Array, frameRate:Number, loop:Boolean, restore:Boolean)
		{
			_name = name;
			_frameRate = frameRate;
			_loop = loop;
			_restoreOriginal = restore;
			_frames = new Vector.<String>();
			var count:int = frames.length;
			for (var i:int = 0; i < count; ++i) 
			{
				_frames.push(frames[i]);
			} // END FOR
			_current = 0;
		}
		
		
		
		//******************************************************
		
		/**
		 * Sets the animation back to the first frame.
		 */
		public function reset():void
		{
			_current = 0;
		} // END FUNCTION reset
		
		
		//******************************************************
		
		/**
		 * Returns whether or not there is another frame in the array after the current frame.
		 * 
		 * @return	If there is another frame to play.
		 */
		public function hasNextFrame():Boolean
		{
			return (_current < _frames.length);
		} // END FUNCTION hasNextFrame
		
		
		//******************************************************
		
		/**
		 * Gets the next frame in the array after the current one.
		 * 
		 * @return	The next frame.
		 */
		public function get nextFrame():String
		{
			_current = (_current < _frames.length)? _current : 0;
			var sFrame:String = _frames[_current];
			_current++;
			return sFrame;
		} // END FUNCTION get nextFrame
		
		
		//******************************************************
		
		
		/**
		 * The name of the first frame of the animation.
		 *
		 * @return	The first frame of the animation.
		 */
		public function get firstFrame():String
		{
			return _frames[0];
		} // END GET firstFrame
		
		
		//******************************************************
		
		
		/**
		 * The Reference name of the animation.
		 * 
		 * @param	n	The Reference name of the animation.
		 * @return		The Reference name of the animation.
		 */
		public function get name():String
		{
			return _name;
		} // END GET name
		
		
		//******************************************************
		
		
		public function set name(n:String):void
		{
			_name = n;
		} // END SET name
		
		//******************************************************
		
		
		/**
		 * The frame rate of this animation.
		 * 
		 * @param	fr	The frame rate of this animation.
		 * @return		The frame rate of this animation.
		 */
		public function get frameRate():Number
		{
			return _frameRate;
		} // END GET frameRate
		
		
		//******************************************************
		
		
		public function set frameRate(fr:Number):void
		{
			_frameRate = fr;
		} // END SET frameRate
		
		//******************************************************
		
		
		/**
		 * Whether or not to loop the animation.
		 * 
		 * @param	l	Whether or not to loop the animation.
		 * @return		Whether or not to loop the animation.
		 */
		public function get loop():Boolean
		{
			return _loop;
		} // END GET loop
		
		
		//******************************************************
		
		
		public function set loop(l:Boolean):void
		{
			_loop = l;
		} // END SET loop
		
		//******************************************************
		
		
		/**
		 * Whether to show the first frame of an animation when the animation is stopped.
		 * 
		 * @param	r	Whether to show the first frame of an animation when the animation is stopped.
		 * @return		Whether to show the first frame of an animation when the animation is stopped.
		 */
		public function get restore():Boolean
		{
			return _restoreOriginal;
		} // END GET restore
		
		
		//******************************************************
		
		
		public function set restore(r:Boolean):void
		{
			_restoreOriginal = r;
		} // END SET restore
		
		
		//******************************************************
		//******************************************************
	} // END CLASS LpSpriteAnimation
} // END PACKAGE