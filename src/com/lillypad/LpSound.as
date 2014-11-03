package com.lillypad
{
	import flash.events.Event;
	import flash.media.Sound;
	import flash.media.SoundChannel;
	
	
	//******************************************************
	//******************************************************
	
	/**
	 * Class Purpose
	 *
	 * @author Paul Reitz
	 */
	public class LpSound
	{
		protected var _sound:Sound;
		protected var _channel:SoundChannel;
		protected var _counter:Number;
		protected var _loop:int;
		
		
		//******************************************************
		//******************************************************
		
		
		public function LpSound(sound:Class)
		{
			_sound = new sound() as Sound;
			_counter = 0;
		}
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function play(loops:int = 0):void
		{
			_loop = loops - 1;
			_channel = _sound.play(_counter);
			_channel.addEventListener(Event.SOUND_COMPLETE, onPlayComplete);
		} // END FUNCTION play
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function stop():void
		{
			if (_channel) 
			{				
				_channel.stop();
				_channel.removeEventListener(Event.SOUND_COMPLETE, onPlayComplete);
				_counter = 0;
			} // END IF
		} // END FUNCTION stop
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function pause():void
		{
			if (_channel) 
			{				
				_counter = _channel.position;
				_channel.stop();
				_channel.removeEventListener(Event.SOUND_COMPLETE, onPlayComplete);
			} // END IF
		} // END FUNCTION pause
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		protected function onPlayComplete(se:Event):void
		{
			_channel.stop();
			_channel.removeEventListener(Event.SOUND_COMPLETE, onPlayComplete);
			if (_loop == -1) 
			{
				_counter = 0;
				_channel = _sound.play();
				_channel.addEventListener(Event.SOUND_COMPLETE, onPlayComplete);
			}
			else if (_loop > 0)
			{
				_loop--;
				_counter = 0;
				_channel = _sound.play();
				_channel.addEventListener(Event.SOUND_COMPLETE, onPlayComplete);
			} // END IF
		} // END FUNCTION onPlayComplete
		
		//******************************************************
		//******************************************************
	} // END CLASS LpSound
} // END PACKAGE