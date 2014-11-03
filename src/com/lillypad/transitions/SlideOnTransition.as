package com.lillypad.transitions
{
	import com.lillypad.utils.LpConstants;
	
	
	//******************************************************
	//******************************************************
	
	/**
	 * Class Purpose
	 *
	 * @author Paul Reitz
	 */
	public class SlideOnTransition extends SlideTransition
	{
		
		
		//******************************************************
		//******************************************************
		
		
		public function SlideOnTransition(time:Number, direction:String)
		{
			super(time, direction);
		}
		
		
		//******************************************************
		
		
		override public function update():void
		{
			switch(_direction)
			{
				case LpConstants.UP:
					_newScene.y -= _moveDistance;
					if (_newScene.y <= 0) 
					{
						_newScene.y = 0;
						_transitionComplete = true;
					} // END IF
					break;
				
				case LpConstants.DOWN:
					_newScene.y += _moveDistance;
					if (_newScene.y >= 0) 
					{
						_newScene.y = 0;
						_transitionComplete = true;
					} // END IF
					break;
				
				case LpConstants.LEFT:
					_newScene.x -= _moveDistance;
					if (_newScene.x <= 0) 
					{
						_newScene.x = 0;
						_transitionComplete = true;
					} // END IF
					break;
				
				case LpConstants.RIGHT:
					_newScene.x += _moveDistance;
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
	} // END CLASS SlideOnTransition
} // END PACKAGE