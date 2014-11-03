package com.lillypad.transitions
{
	import com.lillypad.LP;
	import com.lillypad.utils.LpConstants;
	
	
	//******************************************************
	//******************************************************
	
	/**
	 * Class Purpose
	 *
	 * @author Paul Reitz
	 */
	public class SlideOffTransition extends SlideTransition
	{
		
		
		//******************************************************
		//******************************************************
		
		
		public function SlideOffTransition(time:Number, direction:String)
		{
			super(time, direction);
		}
		
		
		//******************************************************
		
		
		override public function placeScenes():void
		{
			if (_direction == LpConstants.LEFT || _direction == LpConstants.RIGHT) 
			{
				_moveDistance = LP.width / updates;
			}
			else
			{
				_moveDistance = LP.height / updates;
			} // END IF
			swap();
		}
		
		
		//******************************************************
		
		
		override public function update():void
		{
			switch(_direction)
			{
				case LpConstants.UP:
					_oldScene.y -= _moveDistance;
					if (_oldScene.y <= -LP.height) 
					{
						_oldScene.y = -LP.height;
						_transitionComplete = true;
					} // END IF
					break;
				
				case LpConstants.DOWN:
					_oldScene.y += _moveDistance;
					if (_oldScene.y >= LP.height) 
					{
						_oldScene.y = LP.height;
						_transitionComplete = true;
					} // END IF
					break;
				
				case LpConstants.LEFT:
					_oldScene.x -= _moveDistance;
					if (_oldScene.x <= -LP.width) 
					{
						_oldScene.x = -LP.width;
						_transitionComplete = true;
					} // END IF
					break;
				
				case LpConstants.RIGHT:
					_oldScene.x += _moveDistance;
					if (_oldScene.x >= LP.width) 
					{
						_oldScene.x = LP.width;
						_transitionComplete = true;
					} // END IF
					break;
			} // END SWITCH
		} // END FUNCTION update
		
		
		//******************************************************
		//******************************************************
	} // END CLASS SlideOffTransition
} // END PACKAGE