package com.lillypad.tmx
{
	import com.lillypad.LpLibrary;
	
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.geom.Matrix;
	
	
	//******************************************************
	//******************************************************
	
//	{
//		"firstgid":1,
//		"image":"..\/..\/..\/Games\/MapTest2\/bin-debug\/tmw_desert_spacing.png",
//		"imageheight":199,
//		"imagewidth":265,
//		"margin":1,
//		"name":"tmw_desert_spacing",
//		"properties":
//		{
//			
//		},
//		"spacing":1,
//		"tileheight":32,
//		"tileproperties":
//		{
//			"29":
//			{
//				"Sand":"True"
//			},
//			"33":
//			{
//				"Grey":"True",
//				"Stone":"True"
//			},
//			"9":
//			{
//				"Brick":"True"
//			}
//		},
//		"tilewidth":32
//	}
	
	/**
	 * Class Purpose
	 *
	 * @author Paul Reitz
	 */
	public class TmxTileSet
	{
		protected var _firstGID:uint;
		protected var _name:String;
		protected var _graphic:Bitmap;
		protected var _imageWidth:Number;
		protected var _imageHeight:Number;
		protected var _tileWidth:Number;
		protected var _tileHeight:Number;
		protected var _margin:Number;
		protected var _spacing:Number;
		protected var _properties:Array;
		protected var _tileProperties:Object;
		protected var _nWidth:Number;
		protected var _nHeight:Number;
		
		
		
		//******************************************************
		//******************************************************
		
		
		public function TmxTileSet(data:Object)
		{
			_margin = 0;
			_spacing = 0;
			if (data["firstgid"]) 
			{
				_firstGID = uint(data["firstgid"]);
//				trace("firstGID: " + _firstGID.toString(10));
			} // END IF
			
			if (data["name"]) 
			{
				_name = String(data["name"]);
//				trace("name: " + _name);
				
				var graphic:Class = LpLibrary.getClass(_name);
				if (graphic) 
				{
					_graphic = new graphic() as Bitmap;
//					trace("graphic: " + _graphic);
				} // END IF
			} // END IF
			
			if (data["imagewidth"]) 
			{
				_imageWidth = Number(data["imagewidth"]);
//				trace("image width: " + _imageWidth);
			} // END IF
			
			if (data["imageheight"]) 
			{
				_imageHeight = Number(data["imageheight"]);
//				trace("image height: " + _imageHeight);
			} // END IF
			
			if (data["tilewidth"]) 
			{
				_tileWidth = Number(data["tilewidth"]);
//				trace("tile width: " + _tileWidth);
			} // END IF
			
			if (data["tileheight"]) 
			{
				_tileHeight = Number(data["tileheight"]);
//				trace("tile height: " + _tileHeight);
			} // END IF
			
			if (data["margin"]) 
			{
				_margin = Number(data["margin"]);
//				trace("margin: " + _margin);
			} // END IF
			
			if (data["spacing"]) 
			{
				_spacing = Number(data["spacing"]);
//				trace("spacing: " + _spacing);
			} // END IF
			
			if (data["tileproperties"]) 
			{
				_tileProperties = data["tileproperties"];
//				trace("properties: " + _tileProperties);
			} // END IF
			
			_nWidth = _imageWidth - (_margin * 2);
			_nWidth = Math.floor(_imageWidth / (_tileWidth + _spacing));
//			trace("width: " + _nWidth);
			
			_nHeight = _imageHeight - (_margin * 2);
			_nHeight = Math.floor(_imageHeight / (_tileHeight + _spacing));
//			trace("height: " + _nHeight);
		}
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function getTile(index:uint):TmxTile
		{
			var intIndex:int = index - _firstGID + 1;
			var row:int = Math.floor(intIndex / _nWidth);
			var col:int = intIndex % _nWidth;
			row = (col == 0)? row - 1 : row;
			col = (col == 0)? col = _nWidth : col;
			col--;
			var data:BitmapData = new BitmapData(_tileWidth, _tileHeight, true, 0x00000000);
			var matrix:Matrix = new Matrix();
			var mX:Number = col * (_tileWidth + _spacing) + _margin;
			var mY:Number = row * (_tileHeight + _spacing) + _margin;
			matrix.createBox(1, 1, 0, -mX, -mY);
			data.draw(_graphic, matrix);
			var tileMap:Bitmap = new Bitmap(data);
			var tile:TmxTile = new TmxTile(tileMap);
//			trace("index: " + index + " at [" + col + " x " + row + "]");
			return tile;
			return null;
		} // END FUNCTION getTile
		
		
		
		//******************************************************
		
		
		/**
		 * The .
		 *
		 * @return	The .
		 */
		public function get tileWidth():Number
		{
			return _tileWidth;
		} // END GET tileWidth
		
		
		
		//******************************************************
		
		
		/**
		 * The .
		 *
		 * @return	The .
		 */
		public function get tileHeight():Number
		{
			return _tileHeight;
		} // END GET tileHeight
		
		
		
		//******************************************************
		
		
		/**
		 * The .
		 *
		 * @return	The .
		 */
		public function get firstGID():uint
		{
			return _firstGID;
		} // END GET firstGID
		
		
		//******************************************************
		//******************************************************
	} // END CLASS TmxTIleSet
} // END PACKAGE