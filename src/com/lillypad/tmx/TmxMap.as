package com.lillypad.tmx
{
	import com.lillypad.core.LpDisplayObject;
	
	import mx.states.AddChild;
	
	
	
	//******************************************************
	//******************************************************
	
	/**
	 * Class Purpose
	 *
	 * @author Paul Reitz
	 */
	public class TmxMap extends LpDisplayObject
	{
		protected var _mapWidth:Number;
		protected var _mapHeight:Number;
		protected var _tileWidth:Number;
		protected var _tileHeight:Number;
		protected var _layers:Array;
		protected var _tileSet:TmxTileList;
		
		//******************************************************
		//******************************************************
		
		
		public function TmxMap(data:Object)
		{
			super();
			_layers = new Array();
			if (data["width"]) 
			{
				_mapWidth = Number(data["width"]);
			} // END IF
			if (data["height"]) 
			{
				_mapHeight = Number(data["height"]);
			} // END IF
			if (data["tilewidth"]) 
			{
				_tileWidth = Number(data["tilewidth"]);
			} // END IF
			if (data["tileheight"]) 
			{
				_tileHeight = Number(data["tileheight"]);
			} // END IF
			if (data["tilesets"]) 
			{
				_tileSet = new TmxTileList(data["tilesets"]);
				_tileSet.mapWidth = _mapWidth;
				_tileSet.tileWidth = _tileWidth;
				_tileSet.mapHeight = _mapHeight;
				_tileSet.tileHeight = _tileHeight;
			} // END IF
			if (data["layers"]) 
			{
				var layers:Array = data["layers"];
				var count:int = layers.length;
				var layer:TmxLayer;
				for (var i:int = 0; i < count; ++i) 
				{
					var type:String = layers[i]["type"];
					if (type == TmxLayer.TILE_LAYER) 
					{
						layer = new TmxTileLayer(layers[i], _tileSet);
						layer.updateLayer();
						_layers[String(layers[i]["name"])] = layer;
						addChild(layer);
					}
					else if (type == TmxLayer.OBJECT_LAYER)
					{
						layer = new TmxObjectLayer(layers[i]);
						_layers[String(layers[i]["name"])] = layer;
					} // END IF
				} // END FOR
			} // END IF
		}
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public override function update():void
		{
			
			
		} // END FUNCTION update
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function getObjectLayerByName(name:String):TmxObjectLayer
		{
			if (_layers[name] && _layers[name] is TmxObjectLayer) 
			{
				return _layers[name];
			} // END IF
			return null;
		} // END FUNCTION getObjectLayerByName
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function getTileLayerByName(name:String):TmxTileLayer
		{
			if (_layers[name] && _layers[name] is TmxTileLayer) 
			{
				return _layers[name];
			} // END IF
			return null;
		} // END FUNCTION getTileLayerByName
		
		//******************************************************
		//******************************************************
	} // END CLASS TmxMap
} // END PACKAGE