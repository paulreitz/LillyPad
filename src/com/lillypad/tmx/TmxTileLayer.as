package com.lillypad.tmx
{
	import flash.display.DisplayObject;
	import flash.geom.Point;
	
	
	//******************************************************
	//******************************************************
	
	/**
	 * Class Purpose
	 *
	 * @author Paul Reitz
	 */
	public class TmxTileLayer extends TmxLayer
	{
		protected var _tileSet:TmxTileList;
		protected var _tileData:Array;
		protected var _sName:String;
		protected var _tiles:Vector.<Vector.<TmxTile>>;
		
		
		//******************************************************
		//******************************************************
		
		
		public function TmxTileLayer(data:Object, tileSet:TmxTileList)
		{
			super(data);
			_tiles = new Vector.<Vector.<TmxTile>>();
			for (var j:int = 0; j < tileSet.mapWidth; ++j) 
			{
				_tiles[j] = new Vector.<TmxTile>();
				for (var k:int = 0; k < tileSet.mapHeight; ++k) 
				{
					_tiles[j].push(null);
				} // END FOR
			} // END FOR
			_tileSet = tileSet;
			if (data["name"]) 
			{
				_sName = String(data["name"]);
			} // END IF
			if (data["data"]) 
			{
				_tileData = data["data"];
			} // END IF
			var count:int = _tileData.length;
			for (var i:int = 0; i < count; ++i) 
			{
				if (int(_tileData[i]) > 0) 
				{
					var tile:TmxTile = _tileSet.getTile(_tileData[i]);
					tile.x = ((i % _tileSet.mapWidth) * _tileSet.tileWidth) - (_tileSet.tileWidth / 2);
					tile.y = ((Math.floor(i / _tileSet.mapWidth) * _tileSet.tileHeight)) - (_tileSet.tileHeight / 2);
					_tiles[(i % _tileSet.mapWidth) ][Math.floor(i / _tileSet.mapWidth)] = tile;
//					trace("index is " + (i % _tileSet.mapWidth) + " by " + Math.floor(i / _tileSet.mapWidth));
					addChild(tile);
				} // END IF
			} // END FOR
		}
		
		
		//******************************************************
		
		
		override public function updateLayer():void
		{
			removeChildren();
			var tileCols:int = _tiles.length;
			for (var j:int = 0; j < tileCols; ++j) 
			{
				var tileRows:int = _tiles[j].length;
				for (var k:int = 0; k < tileRows; ++k) 
				{
					_tiles[j][k] = null;
				} // END FOR
			} // END FOR
			var count:int = _tileData.length;
			for (var i:int = 0; i < count; ++i) 
			{
				if (int(_tileData[i]) > 0) 
				{
					var tile:TmxTile = _tileSet.getTile(_tileData[i]);
					tile.x = ((i % _tileSet.mapWidth) * _tileSet.tileWidth) - (_tileSet.tileWidth / 2);
					tile.y = ((Math.floor(i / _tileSet.mapWidth) * _tileSet.tileHeight)) - (_tileSet.tileHeight / 2);
					_tiles[int(tile.x / _tileSet.mapWidth)][int(tile.y / _tileSet.mapHeight)] = tile;
					
					addChild(tile);
				} // END IF
			} // END FOR
		}
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function getTileAtLocation(location:Point):TmxTile
		{
			var indexX:int = (location.x + (_tileSet.tileWidth / 2)) / _tileSet.mapWidth - 1;
			var indexY:int = (location.y - (_tileSet.tileHeight / 2)) / _tileSet.mapHeight;
			if (indexX >= 0 && indexX < _tiles.length) 
			{
				if (indexY >= 0 && indexY < _tiles[indexX].length) 
				{
					return _tiles[indexX][indexY];
				} // END IF
			} // END IF
			return null;
		} // END FUNCTION getTileAtLocation
		
		//******************************************************
		//******************************************************
	} // END CLASS TmxTileLayer
} // END PACKAGE