package com.lillypad.transitions
{
	import com.lillypad.anim.LpTransition;
	
	
	
	//******************************************************
	//******************************************************
	
	/**
	 * Class Purpose
	 *
	 * @author Paul Reitz
	 */
	public class FadeTransition extends LpTransition
	{
		protected var _alphaAdjust:Number;
		
		
		//******************************************************
		//******************************************************
		
		
		public function FadeTransition(time:Number)
		{
			super(time);
		}
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public override function placeScenes():void
		{
			_alphaAdjust = 1 / updates;
			swap();
		} // END FUNCTION placeScenes
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public override function update():void
		{
			var nextAlpha:Number = oldScene.alpha - _alphaAdjust;
			if (nextAlpha > 0) 
			{
				oldScene.alpha = nextAlpha;
			}
			else
			{
				oldScene.alpha = 0;
				complete = true;
			} // END IF
		} // END FUNCTION update
		
		//******************************************************
		//******************************************************
	} // END CLASS FadeTransition
} // END PACKAGE