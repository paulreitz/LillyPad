package com.lillypad.tmx
{
	
	
	//******************************************************
	//******************************************************
	
	/**
	 * Class Purpose
	 *
	 * @author Paul Reitz
	 */
	public class TmxTileList
	{
		protected var _tileSets:Vector.<TmxTileSet>;
		protected var _tileWidth:Number;
		protected var _tileHeight:Number;
		protected var _mapWidth:Number;
		protected var _mapHeight:Number;
		
		
		//******************************************************
		//******************************************************
		
		
		public function TmxTileList(tileSets:Array)
		{
			_tileSets = new Vector.<TmxTileSet>();
			var count:int = tileSets.length;
			for (var i:int = 0; i < count; ++i) 
			{
				var tileSet:TmxTileSet = new TmxTileSet(tileSets[i]);
				_tileSets.push(tileSet);
			} // END FOR
		}
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function getTile(index:uint):TmxTile
		{
			for (var i:int = _tileSets.length - 1; i >= 0; --i) 
			{
				if (index >= _tileSets[i].firstGID) 
				{
					return _tileSets[i].getTile(index);
				} // END IF
			} // END FOR
			return null;
		} // END FUNCTION getTile
		
		//******************************************************
		
		
		/**
		 * The .
		 * 
		 * @param	nWidth	The .
		 * @return				The .
		 */
		public function get tileWidth():Number
		{
			return _tileWidth;
		} // END GET tileWidth
		
		
		//******************************************************
		
		
		public function set tileWidth(nWidth:Number):void
		{
			_tileWidth = nWidth;
		} // END SET tileWidth
		
		//******************************************************
		
		
		/**
		 * The .
		 * 
		 * @param	nHeight	The .
		 * @return				The .
		 */
		public function get tileHeight():Number
		{
			return _tileHeight;
		} // END GET tileHeight
		
		
		//******************************************************
		
		
		public function set tileHeight(nHeight:Number):void
		{
			_tileHeight = nHeight;
		} // END SET tileHeight
		
		//******************************************************
		
		
		/**
		 * The .
		 * 
		 * @param	nWidth	The .
		 * @return				The .
		 */
		public function get mapWidth():Number
		{
			return _mapWidth;
		} // END GET mapWidth
		
		
		//******************************************************
		
		
		public function set mapWidth(nWidth:Number):void
		{
			_mapWidth = nWidth;
		} // END SET mapWidth
		
		//******************************************************
		
		
		/**
		 * The .
		 * 
		 * @param	nHeight	The .
		 * @return				The .
		 */
		public function get mapHeight():Number
		{
			return _mapHeight;
		} // END GET mapHeight
		
		
		//******************************************************
		
		
		public function set mapHeight(nHeight:Number):void
		{
			_mapHeight = nHeight;
		} // END SET mapHeight
		
		
		//******************************************************
		//******************************************************
	} // END CLASS TmxTileList
} // END PACKAGE