package com.lillypad.ui.core
{
	import com.lillypad.LpSprite;
	import com.lillypad.core.LpTilableSprite;
	
	
	//******************************************************
	//******************************************************
	
	/**
	 * Class Purpose
	 *
	 * @author Paul Reitz
	 */
	public class LpBorderedComponent extends LpComponent
	{
		protected const NORTH_WEST	:String = "nw";
		protected const NORTH_EAST	:String = "ne";
		protected const SOUTH_WEST	:String = "sw";
		protected const SOUTH_EAST	:String = "se";
		protected const TOP			:String = "top";
		protected const BOTTOM		:String = "bottom";
		protected const LEFT		:String = "left";
		protected const RIGHT		:String = "right";
		protected const BACKGROUND	:String = "background";
		
		protected var _uiWidth:Number;
		protected var _uiHeight:Number;
		protected var _minWidth:Number;
		protected var _minHeight:Number;
		
		protected var _northWest:LpSprite;
		protected var _northEast:LpSprite;
		protected var _southWest:LpSprite;
		protected var _southEast:LpSprite;
		protected var _top:LpSprite;
		protected var _bottom:LpSprite;
		protected var _left:LpSprite;
		protected var _right:LpSprite;
		protected var _background:LpSprite;
		
		
		protected var _backgroundTiled:LpTilableSprite;
		protected var _leftTiled:LpTilableSprite;
		protected var _rightTiled:LpTilableSprite;
		protected var _topTiled:LpTilableSprite;
		protected var _bottomTiled:LpTilableSprite;
		
		
		//******************************************************
		//******************************************************
		
		
		public function LpBorderedComponent(Graphic:Class, frames:Object)
		{
			super(Graphic, frames);
			_uiWidth = 0;
			_uiHeight = 0;
			
			_northWest = new LpSprite(Graphic, frames);
			_northWest.center = false;
			_northWest.showFrame(NORTH_WEST);
			
			_northEast = new LpSprite(Graphic, frames);
			_northEast.center = false;
			_northEast.showFrame(NORTH_EAST);
			
			_southWest = new LpSprite(Graphic, frames);
			_southWest.center = false;
			_southWest.showFrame(SOUTH_WEST);
			
			_southEast = new LpSprite(Graphic, frames);
			_southEast.center = false;
			_southEast.showFrame(SOUTH_EAST);
			
			_top = new LpSprite(Graphic, frames);
			_top.center = false;
			_top.showFrame(TOP);
			
			_bottom = new LpSprite(Graphic, frames);
			_bottom.center = false;
			_bottom.showFrame(BOTTOM);
			
			_left = new LpSprite(Graphic, frames);
			_left.center = false;
			_left.showFrame(LEFT);
			
			_right = new LpSprite(Graphic, frames);
			_right.center = false;
			_right.showFrame(RIGHT);
			
			_background = new LpSprite(Graphic, frames);
			_background.center = false;
			_background.showFrame(BACKGROUND);
			
			_backgroundTiled = new LpTilableSprite(_background);
			_leftTiled = new LpTilableSprite(_left);
			_rightTiled = new LpTilableSprite(_right);
			_topTiled = new LpTilableSprite(_top);
			_bottomTiled = new LpTilableSprite(_bottom);
			
			_minWidth = _northWest.width + _topTiled.width + _northEast.width;
			_minHeight = _northWest.height + _left.height + _southWest.height;
			
			_uiWidth = _minWidth;
			_uiHeight = _minHeight;
			
			addChild(_backgroundTiled);
			addChild(_northWest);
			addChild(_leftTiled);
			addChild(_southWest);
			addChild(_topTiled);
			addChild(_bottomTiled);
			addChild(_northEast);
			addChild(_rightTiled);
			addChild(_southEast);
			
			
			
			
		}
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function updateSize(nWidth:Number, nHeight:Number):void
		{
			_uiWidth = (nWidth > _minWidth)? nWidth : _minWidth;
			_uiHeight = (nHeight > _minHeight)? nHeight : _minHeight;
			
			_northEast.x = _uiWidth - _northEast.width;
			_topTiled.x = _northWest.width;
			_topTiled.updateSize((_northEast.x - _northWest.width), _topTiled.height);
			
			_southWest.y = _uiHeight - _southWest.height;
			
			_leftTiled.y = _northWest.height;
			_leftTiled.updateSize(_leftTiled.width, (_southWest.y - _northWest.height));
			
			_southEast.x = _uiWidth - _southEast.width;
			_southEast.y = _uiHeight - _southEast.height;
			
			_bottomTiled.x = _northWest.width;
			_bottomTiled.y = _uiHeight - _bottomTiled.height;
			_bottomTiled.updateSize((_southEast.x - _southWest.width), _bottomTiled.height);
			
			_rightTiled.x = _uiWidth - _rightTiled.width;
			_rightTiled.y = _northEast.height;
			_rightTiled.updateSize(_rightTiled.width, (_southEast.y - _northEast.height));
			
			_backgroundTiled.x = _northWest.width;
			_backgroundTiled.y = _northWest.height;
			_backgroundTiled.updateSize(_topTiled.width, _leftTiled.height);
		} // END FUNCTION updateSize
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public override function updateUI():void
		{
			
		} // END FUNCTION updateUI
		
		
		
		//******************************************************
		//******************************************************
	} // END CLASS LpBorderedComponent
} // END PACKAGE