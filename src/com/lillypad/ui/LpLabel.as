package com.lillypad.ui
{
	import com.lillypad.core.LpDisplayObject;
	
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.geom.Matrix;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;
	import com.lillypad.LP;
	
	
	
	//******************************************************
	//******************************************************
	
	/**
	 * Class Purpose
	 *
	 * @author Paul Reitz
	 */
	public class LpLabel extends LpDisplayObject
	{
		protected var _text:TextField;
		protected var _textFormat:TextFormat;
		protected var _bind:String;
		
		
		//******************************************************
		//******************************************************
		
		
		public function LpLabel(text:String = "")
		{
			super();
			_text = new TextField();
			_text.text = text;
			_text.autoSize = TextFieldAutoSize.LEFT;
			_textFormat = new TextFormat("Helvetica", 36, 0xff00ff);
			_text.defaultTextFormat = _textFormat;
			addChild(_text);
			_bind = null;
		}
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		override public function update():void
		{
			if (_bind) 
			{
				var txt:String = LP.getProperty(_bind) as String;
				if (txt) 
				{
					_text.text = txt;
				} // END IF
			} // END IF
			_text.setTextFormat(_textFormat);
			
			_text.x = -(_text.width * 0.5);
			_text.y = -(_text.height * 0.5);
		}
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function setFormat(name:String, size:Number, color:uint = 0, bold:Boolean = false):void
		{
//			_text.getTextFormat().font = name;
//			_text.getTextFormat().color = color;
//			_text.getTextFormat().size = size;
//			_text.getTextFormat().bold = bold;
			_textFormat.font = name;
			_textFormat.size = size;
			_textFormat.color = color;
			_textFormat.bold = bold;
			_text.defaultTextFormat = _textFormat;
			update();
		} // END FUNCTION setFormat
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		override public function get height():Number
		{
			return _text.height;
		}
		
		
		//******************************************************
		
		
		override public function set height(value:Number):void
		{
			_text.height = value;
		}
		
		
		//******************************************************
		
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		override public function get width():Number
		{
			return _text.width;
		}
		
		
		//******************************************************
		
		override public function set width(value:Number):void
		{
			_text.width = value;
		}
		
		//******************************************************
		
		
		/**
		 * The .
		 * 
		 * @param	f	The .
		 * @return				The .
		 */
		public function get font():String
		{
			return _textFormat.font;
		} // END GET font
		
		
		//******************************************************
		
		
		public function set font(f:String):void
		{
			_textFormat.font = f;
			_text.getTextFormat().font = f;
		} // END SET font
		
		//******************************************************
		
		
		/**
		 * The .
		 * 
		 * @param	t	The .
		 * @return				The .
		 */
		public function get text():String
		{
			return _text.text;
		} // END GET text
		
		
		//******************************************************
		
		
		public function set text(t:String):void
		{
			_text.text = t;
			_text.setTextFormat(_textFormat);
		} // END SET text
		
		//******************************************************
		
		
		/**
		 * The .
		 * 
		 * @param	s	The .
		 * @return				The .
		 */
		public function get fontSize():Number
		{
			return _textFormat.size as Number;
		} // END GET fontSize
		
		
		//******************************************************
		
		
		public function set fontSize(s:Number):void
		{
			_textFormat.size = s;
		} // END SET fontSize
		
		//******************************************************
		
		
		/**
		 * The .
		 * 
		 * @param	b	The .
		 * @return				The .
		 */
		public function get bold():Boolean
		{
			return _textFormat.bold;
		} // END GET bold
		
		
		//******************************************************
		
		
		public function set bold(b:Boolean):void
		{
			_textFormat.bold = b;
		} // END SET bold
		
		//******************************************************
		
		
		/**
		 * The .
		 * 
		 * @param	c	The .
		 * @return				The .
		 */
		public function get color():uint
		{
			return _textFormat.color as uint;
		} // END GET color
		
		
		//******************************************************
		
		
		public function set color(c:uint):void
		{
			_textFormat.color = c;
		} // END SET color
		
		//******************************************************
		
		
		/**
		 * The .
		 * 
		 * @param	m	The .
		 * @return				The .
		 */
		public function get multiLine():Boolean
		{
			return _text.multiline;
		} // END GET multiLine
		
		
		//******************************************************
		
		
		public function set multiLine(m:Boolean):void
		{
			_text.multiline = m;
		} // END SET multiLine
		
		//******************************************************
		
		
		/**
		 * The .
		 * 
		 * @param	sBind	The .
		 * @return				The .
		 */
		public function get bindProperty():String
		{
			return _bind;
		} // END GET bindProperty
		
		
		//******************************************************
		
		
		public function set bindProperty(sBind:String):void
		{
			_bind = sBind;
		} // END SET bindProperty
		
		
		//******************************************************
		
		
		/**
		 * The .
		 *
		 * @return	The .
		 */
		public function get formatString():String
		{
			return "name:[" + _textFormat.font + "], size:[" + _textFormat.size + "], color:[" + (_textFormat.color as uint).toString(16) + "]";
		} // END GET formatString
		
		
		//******************************************************
		//******************************************************
	} // END CLASS LpLabel
} // END PACKAGE