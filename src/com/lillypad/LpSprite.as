package com.lillypad
{
	import com.lillypad.anim.LpSpriteAnimation;
	import com.lillypad.anim.LpSpriteFrame;
	import com.lillypad.core.LpDisplayObject;
	
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Sprite;
	import flash.events.TimerEvent;
	import flash.geom.Matrix;
	import flash.geom.Point;
	import flash.utils.Timer;
	
	
	
	//******************************************************
	//******************************************************
	
	/**
	 * Class Purpose
	 *
	 * @author Paul Reitz
	 */
	public class LpSprite extends LpDisplayObject
	{
		protected var _displayMap:Bitmap;
		protected var _spriteSheet:Bitmap;
		protected var _displaySprite:Sprite;
		protected var _frameData:Object;
		protected var _frames:Array;
		protected var _animations:Array;
		protected var _matrix:Matrix;
		protected var _timer:Timer;
		protected var _currentAnimation:String;
		protected var _millis:Number;
		
		
		//******************************************************
		//******************************************************
		
		
		public function LpSprite(Graphic:Class, frames:Object = null)
		{
			_center = true;
			_frames = new Array();
			_animations = new Array();
			_timer = new Timer(0);
			_timer.addEventListener(TimerEvent.TIMER, playNextFrame);
			if (frames) 
			{
				_spriteSheet = new Graphic as Bitmap;
				_displayMap = new Bitmap();
				_displaySprite = new Sprite();
				_displaySprite.addChild(_displayMap);
				addChild(_displaySprite);
				_matrix = new Matrix();
				_frameData = frames;
				setupFrames();
			}
			else
			{
				var b:Bitmap = new Graphic() as Bitmap;
				b.x = -(b.width * 0.5);
				b.y = -(b.height * 0.5);
				_displaySprite = new Sprite();
				_displaySprite.addChild(b);
				addChild(_displaySprite);
			} // END IF
		}
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		protected function setupFrames():void
		{
			var frame:LpSpriteFrame;
			for (var name:String in _frameData.frames)
			{
				frame = new LpSpriteFrame(_frameData.frames[name]);
				frame.name = name;
				_frames[name] = frame;
			}
		} // END FUNCTION setupFrames
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function showFrame(frame:String):void
		{
			if (_frames && _frames[frame]) 
			{
				var current:LpSpriteFrame = _frames[frame];
				var data:BitmapData = new BitmapData(current.width, current.height, true, 0x00000000);
				_matrix.createBox(1, 1, 0, -current.x, -current.y);
				data.draw(_spriteSheet, _matrix, null, null, current.clip);
				_displayMap.bitmapData = data;
				_displayMap.x = (_center)? -(_displayMap.width * 0.5) : 0;
				_displayMap.y = (_center)? -(_displayMap.height * 0.5) : 0;
			} // END IF
		} // END FUNCTION showFrame
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function createAnimations(name:String, frames:Array, frameRate:Number, loop:Boolean, restore:Boolean):void
		{
			var animation:LpSpriteAnimation = new LpSpriteAnimation(name, frames, frameRate, loop, restore);
			_animations[name] = animation;
		} // END FUNCTION createAnimations
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function play(animation:String):void
		{
			if (_animations[animation]) 
			{
				killTimer();
				_currentAnimation = animation;
				if (_animations[_currentAnimation]) 
				{
					var ani:LpSpriteAnimation = _animations[_currentAnimation];
					ani.reset();
					_timer.delay = 0;
					_timer.start();
//					trace("Play: " + animation);
//					showFrame(ani.nextFrame);
				} // END IF
			} // END IF
		} // END FUNCTION play
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function stop(animation:String = null):void
		{
			if (_currentAnimation && _animations[_currentAnimation]) 
			{
				var ani:LpSpriteAnimation = _animations[_currentAnimation];
				if (animation) 
				{
					if (animation == _currentAnimation) 
					{
						killTimer();
						if (ani.restore) 
						{
							showFrame(ani.firstFrame);
						} // END IF
					} // END IF
				}
				else
				{
					killTimer();
					if (ani.restore) 
					{
						showFrame(ani.firstFrame);
					} // END IF
				} // END IF
				
			} // END IF
		} // END FUNCTION stop
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		protected function killTimer():void
		{
			if (_timer) 
			{
				if (_timer.running) 
				{
					_timer.stop();
				} // END IF
				
//				if (_timer.hasEventListener(TimerEvent.TIMER)) 
//				{
//					_timer.removeEventListener(TimerEvent.TIMER, playNextFrame);
//				} // END IF
			} // END IF
//			_timer = null;
		} // END FUNCTION killTimer
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		protected function playNextFrame(te:TimerEvent):void
		{
			var ani:LpSpriteAnimation = _animations[_currentAnimation];
			if (ani.loop || ani.hasNextFrame()) 
			{
				if (_timer.delay == 0) 
				{
					_timer.delay = 1000 / ani.frameRate;
				} // END IF
				var f:String = ani.nextFrame;
				showFrame(f);
				// on frame callback
			}
			else
			{
				stop();
			} // END IF
		} // END FUNCTION playNextFrame
		
		
		
		//******************************************************
		
		
		/**
		 * The .
		 *
		 * @return	The .
		 */
		public function get isPlaying():Boolean
		{
			return (_timer && _timer.running);
		} // END GET isPlaying
		
		
		
		//******************************************************
		
		
		/**
		 * The .
		 *
		 * @return	The .
		 */
		public function get animation():String
		{
			return _currentAnimation;
		} // END GET animation
		
		
		//******************************************************
		//******************************************************
	} // END CLASS LpSprite
} // END PACKAGE