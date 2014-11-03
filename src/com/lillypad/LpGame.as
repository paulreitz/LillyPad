package com.lillypad
{
	import com.lillypad.anim.LpTransition;
	
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.events.MouseEvent;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
	
	
	//******************************************************
	//******************************************************
	
	/**
	 * Class Purpose
	 *
	 * @author Paul Reitz
	 */
	public class LpGame extends Sprite
	{
		protected var _scene:LpScene;
		protected var _gameTimer:Timer;
		protected var _transitioning:Boolean;
		protected var _transition:LpTransition;
		protected var _hud:LpHud;
		
		protected var _gameLayer:Sprite;
		protected var _hudLayer:Sprite;
		protected var _working:Boolean;
		
		
		//******************************************************
		//******************************************************
		
		
		public function LpGame()
		{
			LP.init();
			LpSFX.init();
			LpLibrary.init();
			LpState.init();
			_transitioning = false;
			_gameLayer = new Sprite();
			_hudLayer = new Sprite();
			addChild(_gameLayer);
			addChild(_hudLayer);
			_working = false;
			(stage)? init() : addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		protected function startGame(startScene:LpScene, hud:LpHud = null):void
		{
			_scene = startScene;
			_hud = hud;
			_gameTimer = new Timer(1000 / LP.frameRate);
			_gameTimer.addEventListener(TimerEvent.TIMER, gameLoop);
			_gameTimer.start();
			_gameLayer.addChild(startScene);
			if (_hud) 
			{
				_hudLayer.addChild(_hud);
			} // END IF
		} // END FUNCTION startGame
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function onReady():void
		{
			
		} // END FUNCTION onReady
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		protected function init(e:Event = null):void
		{
			if (hasEventListener(Event.ADDED_TO_STAGE)) 
			{
				removeEventListener(Event.ADDED_TO_STAGE, init);
			} // END IF
			
			LP.winSize.width = stage.stageWidth;
			LP.winSize.height = stage.stageHeight;
			LP.frameRate = stage.frameRate;
			stage.addEventListener(KeyboardEvent.KEY_DOWN, keyDown);
			stage.addEventListener(KeyboardEvent.KEY_UP, keyUp);
			stage.addEventListener(MouseEvent.MOUSE_DOWN, mouseDown);
			stage.addEventListener(MouseEvent.MOUSE_UP, mouseUp);
			onReady();
		} // END FUNCTION init
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function gameLoop(te:TimerEvent):void
		{
			if (!_working) 
			{
				_working = true;
				if (LP.doTransition) 
				{
					transitionScene(LP.newScene, LP.transition);
					LP.newScene = null;
					LP.transition = null;
					LP.doTransition = false;
				} // END IF
				if (_transitioning) 
				{
					_transition.update();
					if (_transition.complete) 
					{
						_transitioning = false;
						_gameLayer.addChild(_scene);
						_gameLayer.removeChild(_transition);
						_transition.destroy();
						_transition = null;
					} // END IF
				}
				else
				{
					if (LP.replaceHud) 
					{
						if (_hud) 
						{
							_hudLayer.removeChild(_hud);
						} // END IF
						_hud = LP.newHud;
						_hudLayer.addChild(_hud);
						LP.replaceHud = false;
					} // END IF
					if (_scene) 
					{
						_scene.update();
						_scene.drawScene();
					} // END IF
					if (_hud) 
					{
						_hud.update();
						_hud.drawScene();
					} // END IF
					LP.keyboard.update();
					LP.mouse.update(stage.mouseX, stage.mouseY);
				} // END IF
				_working = false;
			} // END IF
			
		} // END FUNCTION gameLoop
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function transitionScene(scene:LpScene, transition:LpTransition = null):void
		{
			if (transition) 
			{
				_transition = transition;
				scene.drawScene();
				_transition.drawScenes(_scene, scene);
				_transition.placeScenes();
				_gameLayer.addChild(_transition);
				_transitioning = true;
				_gameLayer.removeChild(_scene);
				_scene.destroy();
				_scene = scene;
				
			}
			else
			{
				_gameTimer.stop();
				_gameLayer.removeChild(_scene);
				_scene.destroy();
				_scene = scene;
				_gameLayer.addChild(_scene);
				_gameTimer.start();
			} // END IF
		} // END FUNCTION transitionScene
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		protected function keyDown(ke:KeyboardEvent):void
		{
			LP.keyboard.setKeyDown(ke.keyCode);
		} // END FUNCTION keyDown
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		protected function keyUp(ke:KeyboardEvent):void
		{
			LP.keyboard.setKeyUp(ke.keyCode);
		} // END FUNCTION keyUp
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		protected function mouseDown(me:MouseEvent):void
		{
			LP.mouse.mouseDown();
		} // END FUNCTION mouseDown
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		protected function mouseUp(me:MouseEvent):void
		{
			LP.mouse.mouseUp();
		} // END FUNCTION mouseUp
		
		//******************************************************
		//******************************************************
	} // END CLASS LpGame
} // END PACKAGE