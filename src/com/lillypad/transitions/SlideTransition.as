package com.lillypad.transitions
{
	import com.lillypad.LP;
	import com.lillypad.LpScene;
	import com.lillypad.anim.LpTransition;
	import com.lillypad.utils.LpConstants;
	
	
	
	//******************************************************
	//******************************************************
	
	/**
	 * Class Purpose
	 *
	 * @author Paul Reitz
	 */
	public class SlideTransition extends LpTransition
	{
		protected var _direction:String;
		protected var _moveDistance:Number;
		
		
		//******************************************************
		//******************************************************
		
		
		public function SlideTransition(time:Number, direction:String)
		{
			super(time);
			if (!(direction == LpConstants.UP || direction == LpConstants.DOWN || direction == LpConstants.LEFT || direction == LpConstants.RIGHT)) 
			{
				throw new Error("ERROR: transition must be one of 'up', 'down', 'left' or 'right'");
			} // END IF
			_direction = direction;
		} // END CONSTRUCTOR
		
		
		//******************************************************
		
		
		override public function drawScenes(oldScene:LpScene, newScene:LpScene):void
		{
			super.drawScenes(oldScene, newScene);
		} // END FUNCTION drawScenes
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public override function placeScenes():void
		{
			if (_direction == LpConstants.LEFT || _direction == LpConstants.RIGHT) 
			{
				_moveDistance = LP.width / updates;
			}
			else
			{
				_moveDistance = LP.height / updates;
			} // END IF
			
			switch(_direction)
			{
				case LpConstants.UP:
					_newScene.y = LP.height;
				break;
				
				case LpConstants.DOWN:
					_newScene.y = -LP.height;
				break;
				
				case LpConstants.LEFT:
					_newScene.x = LP.width;
				break;
				
				case LpConstants.RIGHT:
					_newScene.x = -LP.width;
				break;
			} // END SWITCH
		} // END FUNCTION placeScenes
		
		
		//******************************************************
		
		
		override public function update():void
		{
			switch(_direction)
			{
				case LpConstants.UP:
					_newScene.y -= _moveDistance;
					_oldScene.y -= _moveDistance;
					if (_newScene.y <= 0) 
					{
						_newScene.y = 0;
						_transitionComplete = true;
					} // END IF
				break;
				
				case LpConstants.DOWN:
					_newScene.y += _moveDistance;
					_oldScene.y += _moveDistance;
					if (_newScene.y >= 0) 
					{
						_newScene.y = 0;
						_transitionComplete = true;
					} // END IF
				break;
				
				case LpConstants.LEFT:
					_newScene.x -= _moveDistance;
					_oldScene.x -= _moveDistance;
					if (_newScene.x <= 0) 
					{
						_newScene.x = 0;
						_transitionComplete = true;
					} // END IF
				break;
				
				case LpConstants.RIGHT:
					_newScene.x += _moveDistance;
					_oldScene.x += _moveDistance;
					if (_newScene.x >= 0) 
					{
						_newScene.x = 0;
						_transitionComplete = true;
					} // END IF
				break;
			} // END SWITCH
		} // END FUNCTION update
		
		
		//******************************************************
		//******************************************************
	} // END CLASS SlideTransition
} // END PACKAGE