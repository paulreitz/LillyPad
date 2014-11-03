package com.lillypad.anim
{
	import com.lillypad.LP;
	import com.lillypad.LpScene;
	import com.lillypad.core.LpDisplayObject;
	
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Sprite;
	import flash.geom.Matrix;
	
	
	//******************************************************
	//******************************************************
	
	/**
	 * Base class used to create animated transitions between scenes. This class should be extended to create a transition.
	 *
	 * @author Paul Reitz
	 */
	public class LpTransition extends LpDisplayObject
	{
		protected var _oldScene:Sprite;
		protected var _newScene:Sprite;
		protected var _transitionComplete:Boolean;
		protected var _time:Number;
		protected var _updates:int;
		
		
		//******************************************************
		//******************************************************
		
		/**
		 * Creates a new Transition
		 * 
		 * @param	time	The time in miliseconds the transition should take to complete.
		 */
		public function LpTransition(time:Number)
		{
			_time = time;
			_updates = Math.ceil(_time / LP.frameRate);
		}
		
		
		//******************************************************
		
		/**
		 * Takes a snapshot of the scenes being transitioned and places them on the stage..
		 * 
		 * @param	oldScene	The current scene that is being transitioned out.
		 * @param	newScene	The new scene that is being transitioned in.
		 */
		public function drawScenes(oldScene:LpScene, newScene:LpScene):void
		{
			_oldScene = new Sprite();
			_newScene = new Sprite();
			
			drawScene(oldScene, _oldScene);
			addChild(_oldScene);
			drawScene(newScene, _newScene);
			addChild(_newScene);
		} // END FUNCTION drawScenes
		
		
		//******************************************************
		
		
		/**
		 * Takes a snapshot of a scene and draws it into a sprite.
		 * 
		 * @param	scene	The scene to take the snap shot from
		 * @param	display	The sprite to draw the scene snapshot to.
		 */
		protected function drawScene(scene:LpScene, display:Sprite):void
		{
			var b:BitmapData = new BitmapData(LP.width, LP.height, true, 0x00000000);
			var matrix:Matrix = new Matrix();
			matrix.createBox(1, 1, 0, 0, 0);
			b.draw(scene, matrix);
			var bm:Bitmap = new Bitmap(b);
			display.addChild(bm);
		} // END FUNCTION drawScene
		
		
		//******************************************************
		
		
		/**
		 * Called before the transition begins. This function should be overridden 
		 * for any setup a transition needs before starting.
		 * 
		 */
		public function placeScenes():void
		{
			
		} // END FUNCTION placeScenes
		
		//******************************************************
		
		/**
		 * Begins the transition.
		 * 
		 * 
		 */
		public function start():void
		{
			_transitionComplete = false;
		} // END FUNCTION start
		
		
		
		//******************************************************
		
		/**
		 * Used for any cleanup of the transition. This is called once the transition has been completed.
		 * 
		 */
		public override function destroy():void
		{
			
		} // END FUNCTION destroy
		
		//******************************************************
		
		
		/**
		 * Determines whether the transition is complete or still in progress. This property must be set to <code>true</code> after the transition 
		 * has completed.
		 * 
		 * @param	bComplete	Whether the transition is complete or still in progress.
		 * @return				Whether the transition is complete or still in progress.
		 */
		public function get complete():Boolean
		{
			return _transitionComplete;
		} // END GET complete
		
		
		//******************************************************
		
		
		public function set complete(bComplete:Boolean):void
		{
			_transitionComplete = bComplete;
		} // END SET complete
		
		
		//******************************************************
		
		/**
		 * Swaps the z index of the two scene snapshots.
		 */
		protected function swap():void
		{
			setChildIndex(_newScene, getChildIndex(_oldScene));
		} // END FUNCTION swap
		
		
		//******************************************************
		
		
		/**
		 * The snapshot of the scene being transitioned out.
		 *
		 * @return	The snapshot of the scene being transitioned out.
		 */
		protected function get oldScene():Sprite
		{
			return _oldScene;
		} // END GET oldScene
		
		
		
		//******************************************************
		
		
		/**
		 * The snapshot of the scene being transitioned in.
		 *
		 * @return	The snapshot of the scene being transitioned in.
		 */
		protected function get newScene():Sprite
		{
			return _newScene;
		} // END GET newScene
		
		
		
		//******************************************************
		
		
		/**
		 * The estimated number of updates complete the transition.
		 *
		 * @return	The estimated number of updates complete the transition.
		 */
		protected function get updates():int
		{
			return _updates;
		} // END GET updates
		
		
		//******************************************************
		//******************************************************
	} // END CLASS LpTransition
} // END PACKAGE