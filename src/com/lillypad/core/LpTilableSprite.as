package com.lillypad.core
{
	import com.lillypad.LpSprite;
	
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.geom.Matrix;
	
	
	//******************************************************
	//******************************************************
	
	/**
	 * Class Purpose
	 *
	 * @author Paul Reitz
	 */
	public class LpTilableSprite extends LpDisplayObject
	{
		protected var _sprite:LpSprite;
		protected var _map:Bitmap;
		protected var _matrix:Matrix;
		
		
		//******************************************************
		//******************************************************
		
		
		public function LpTilableSprite(sprite:LpSprite)
		{
			super();
			_sprite = sprite;
			_map = new Bitmap();
			addChild(_map);
			_matrix = new Matrix();
			updateSize(_sprite.width, _sprite.height);
		}
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function updateSize(nWidth:Number, nHeight:Number):void
		{
			var cols:uint = Math.ceil(nWidth / _sprite.width);
			var rows:uint = Math.ceil(nHeight / _sprite.height);
			var data:BitmapData = new BitmapData(nWidth, nHeight, true, 0x00000000);
			for (var col:int = 0; col < cols; ++col) 
			{
				for (var row:int = 0; row < rows; ++row) 
				{
					_matrix.createBox(1, 1, 0, (col * _sprite.width), (row * _sprite.height));
					data.draw(_sprite, _matrix);
				} // END FOR
			} // END FOR
			_map.bitmapData = data;
		} // END FUNCTION updateSize
		
		//******************************************************
		//******************************************************
	} // END CLASS LpTilableSprite
} // END PACKAGE