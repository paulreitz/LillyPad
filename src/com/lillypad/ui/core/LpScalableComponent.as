package com.lillypad.ui.core
{
	import com.lillypad.LP;
	
	import flash.geom.Point;
	
	
	//******************************************************
	//******************************************************
	
	/**
	 * Class Purpose
	 *
	 * @author Paul Reitz
	 */
	public class LpScalableComponent extends LpBorderedComponent
	{
		protected const SCALE_NONE	:uint = 0;
		protected const SCALE_UP	:uint = 1;
		protected const SCALE_DOWN	:uint = 2;
		protected const SCALE_LEFT	:uint = 3;
		protected const SCALE_RIGHT	:uint = 4;
		protected const SCALE_NW	:uint = 5;
		protected const SCALE_NE	:uint = 6;
		protected const SCALE_SW	:uint = 7;
		protected const SCALE_SE	:uint = 8;
		
		protected var _scale:uint;
		protected var _lastWidth:Number;
		protected var _lastHeight:Number;
		protected var _lastX:Number;
		protected var _lastY:Number;
		protected var _lastLocX:Number;
		protected var _lastLocY:Number;
		
		
		//******************************************************
		//******************************************************
		
		
		public function LpScalableComponent(Graphic:Class, frames:Object)
		{
			super(Graphic, frames);
			_scale = 0;
		}
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public override function updateUI():void
		{
			super.updateUI();
			if (LP.mouse.justReleased) 
			{
				_scale = SCALE_NONE;
			} // END IF
			if (_scale > 0) 
			{
				checkScale();
			} // END IF
			if (LP.mouse.justPressed) 
			{
				var loc:Point = globalToLocal(new Point(LP.mouse.x, LP.mouse.y));
				_lastWidth = _uiWidth;
				_lastHeight = _uiHeight;
				_lastX = LP.mouse.x;
				_lastY = LP.mouse.y;
				_lastLocX = x;
				_lastLocY = y;
				var left:Boolean = (loc.x < _northWest.width);
				var right:Boolean = (loc.x > _northEast.x);
				var top:Boolean = (loc.y < _northWest.height);
				var bottom:Boolean = (loc.y > _southWest.y);
				if (left && top) 
				{
					_scale = SCALE_NW;
				}
				else if (right && top)
				{
					_scale = SCALE_NE;
				}
				else if (left && bottom)
				{
					_scale = SCALE_SW;
				}
				else if (right && bottom)
				{
					_scale = SCALE_SE;
				}
				else if (top)
				{
					_scale = SCALE_UP;
				}
				else if (bottom)
				{
					_scale = SCALE_DOWN;
				}
				else if (left)
				{
					_scale = SCALE_LEFT;
				}
				else if (right)
				{
					_scale = SCALE_RIGHT;
				} // END IF
//				trace("scale value: " + _scale);
			} // END IF
		} // END FUNCTION updateUI
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		protected function checkScale():void
		{
			var diffX:Number = LP.mouse.x - _lastX;
			var diffY:Number = LP.mouse.y - _lastY;
			
			var newWidth:Number;
			var newHeight:Number;
			switch(_scale)
			{
				case SCALE_UP	:
					newHeight  = _lastHeight - diffY;
					if (newHeight >= _minHeight) 
					{
						updateSize(_uiWidth, newHeight);
						y = _lastLocY + diffY;
					} // END IF
				break;
				
				case SCALE_DOWN	:
					newHeight  = _lastHeight + diffY;
					if (newHeight >= _minHeight) 
					{
						updateSize(_uiWidth, newHeight);
					} // END IF
				break;
				
				case SCALE_LEFT	:
					newWidth = _lastWidth - diffX;
					if (newWidth >= _minWidth) 
					{
						updateSize(newWidth, _uiHeight);
						x = _lastLocX + diffX;
					} // END IF
				break;
				
				case SCALE_RIGHT:
					newWidth = _lastWidth + diffX;
					if (newWidth >= _minWidth) 
					{
						updateSize(newWidth, _uiHeight);
					} // END IF
				break;
				
				case SCALE_NW	:
					newHeight  = _lastHeight - diffY;
					if (newHeight >= _minHeight) 
					{
						updateSize(_uiWidth, newHeight);
						y = _lastLocY + diffY;
					} // END IF
					newWidth = _lastWidth - diffX;
					if (newWidth >= _minWidth) 
					{
						updateSize(newWidth, _uiHeight);
						x = _lastLocX + diffX;
					} // END IF
				break;
				
				case SCALE_NE	:
					newHeight  = _lastHeight - diffY;
					if (newHeight >= _minHeight) 
					{
						updateSize(_uiWidth, newHeight);
						y = _lastLocY + diffY;
					} // END IF
					newWidth = _lastWidth + diffX;
					if (newWidth >= _minWidth) 
					{
						updateSize(newWidth, _uiHeight);
					} // END IF
				break;
				
				case SCALE_SW	:
					newHeight  = _lastHeight + diffY;
					if (newHeight >= _minHeight) 
					{
						updateSize(_uiWidth, newHeight);
					} // END IF
					newWidth = _lastWidth - diffX;
					if (newWidth >= _minWidth) 
					{
						updateSize(newWidth, _uiHeight);
						x = _lastLocX + diffX;
					} // END IF
				break;
				
				case SCALE_SE	:
					newHeight  = _lastHeight + diffY;
					if (newHeight >= _minHeight) 
					{
						updateSize(_uiWidth, newHeight);
					} // END IF
					newWidth = _lastWidth + diffX;
					if (newWidth >= _minWidth) 
					{
						updateSize(newWidth, _uiHeight);
					} // END IF
				break;
				
			} // END SWITCH
		} // END FUNCTION checkScale
		
		//******************************************************
		//******************************************************
	} // END CLASS LpScalableComponent
} // END PACKAGE