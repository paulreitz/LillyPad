package com.lillypad
{
	
	
	//******************************************************
	//******************************************************
	
	/**
	 * Class Purpose
	 *
	 * @author Paul Reitz
	 */
	public class LpSFX
	{
		private static var INIT:Boolean = false;
		private static var _sounds:Array;
		private static var _background:LpSound;
		private static var _playSound:Boolean = true;
		private static var _playBackground:Boolean = true;
		
		
		//******************************************************
		//******************************************************
		
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public static function init():void
		{
			if (!INIT) 
			{
				INIT = true;
				_sounds = new Array();
			} // END IF
		} // END FUNCTION init
		
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public static function addSound(name:String, sound:Class):void
		{
			var s:LpSound = new LpSound(sound);
			_sounds[name] = s;
		} // END FUNCTION addSound
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public static function play(name:String, loops:int = 1):void
		{
			if (_sounds[name] && _playSound) 
			{
				var sound:LpSound = _sounds[name] as LpSound;
				sound.play(loops);
			} // END IF
		} // END FUNCTION play
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public static function playBackground(name:String):void
		{
			if (_sounds[name]) 
			{
				if (_background) 
				{
					_background.stop();
				} // END IF
				var sound:LpSound = _sounds[name] as LpSound;
				_background = sound;
				if (_playBackground) 
				{
					sound.play(0);
				} // END IF
			} // END IF
		} // END FUNCTION playBackground
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public static function pause(name:String):void
		{
			if (_sounds[name]) 
			{
				var sound:LpSound = _sounds[name] as LpSound;
				sound.pause();
			} // END IF
		} // END FUNCTION pause
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public static function stop(name:String):void
		{
			if (_sounds[name]) 
			{
				var sound:LpSound = _sounds[name] as LpSound;
				sound.stop();
			} // END IF
		} // END FUNCTION stop
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public static function stopBackground():void
		{
			if (_background) 
			{
				_background.pause();
			} // END IF
		} // END FUNCTION stopBackground
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public static function stopAll(background:Boolean = true):void
		{
			for each (var s:String in _sounds) 
			{
				if (!background && _sounds[s] == _background) 
				{
					
				}
				else
				{					
					(_sounds[s] as LpSound).stop();
				} // END IF
			}
			
		} // END FUNCTION stopAll
		
		//******************************************************
		
		
		/**
		 * The .
		 *
		 * @param	param1 The .
		 */
		public static function set playSounds(play:Boolean):void
		{
			_playSound = play;
			if (!_playSound) 
			{
				stopAll(false);
			} // END IF
		} // END SET playSounds
		
		//******************************************************
		
		
		/**
		 * The .
		 *
		 * @param	param1 The .
		 */
		public static function set playMusic(play:Boolean):void
		{
			_playBackground = play;
			if (!_playBackground && _background) 
			{
				_background.pause();
			}
			else if (_background)
			{
				_background.play();
			} // END IF
		} // END SET playMusic
		
		
		//******************************************************
		//******************************************************
	} // END CLASS LpSFX
} // END PACKAGE