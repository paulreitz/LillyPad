package com.lillypad.input
{
	
	
	//******************************************************
	//******************************************************
	
	/**
	 * Class Purpose
	 *
	 * @author Paul Reitz
	 */
	public class LpKeys
	{
		public static const BACKSPACE		:String = "BACKSPACE";
		public static const TAB				:String = "TAB";
		public static const ENTER			:String = "ENTER";
		public static const COMMAND			:String = "COMMAND";
		public static const SHIFT			:String = "SHIFT";
		public static const CONTROL			:String = "CONTROL";
		public static const ALTERNATE		:String = "ALTERNATE";
		public static const CAPS_LOCK		:String = "CAPS LOCK";
		public static const ESCAPE			:String = "ESCAPE";
		public static const SPACE			:String = "SPACE";
		public static const PAGE_UP			:String = "PAGE UP";
		public static const PAGE_DOWN		:String = "PAGE DOWN";
		public static const END				:String = "END";
		public static const HOME			:String = "HOME";
		public static const LEFT			:String = "LEFT";
		public static const UP				:String = "UP";
		public static const RIGHT			:String = "RIGHT";
		public static const DOWN			:String = "DOWN";
		public static const INSERT			:String = "INSERT";
		public static const DELETE			:String = "DELETE";
		public static const NUMBER_0		:String = "NUMBER 0";
		public static const NUMBER_1		:String = "NUMBER 1";
		public static const NUMBER_2		:String = "NUMBER 2";
		public static const NUMBER_3		:String = "NUMBER 3";
		public static const NUMBER_4		:String = "NUMBER 4";
		public static const NUMBER_5		:String = "NUMBER 5";
		public static const NUMBER_6		:String = "NUMBER 6";
		public static const NUMBER_7		:String = "NUMBER 7";
		public static const NUMBER_8		:String = "NUMBER 8";
		public static const NUMBER_9		:String = "NUMBER 9";
		public static const A				:String = "A";
		public static const B				:String = "B";
		public static const C				:String = "C";
		public static const D				:String = "D";
		public static const E				:String = "E";
		public static const F				:String = "F";
		public static const G				:String = "G";
		public static const H				:String = "H";
		public static const I				:String = "I";
		public static const J				:String = "J";
		public static const K				:String = "K";
		public static const L				:String = "L";
		public static const M				:String = "M";
		public static const N				:String = "N";
		public static const O				:String = "O";
		public static const P				:String = "P";
		public static const Q				:String = "Q";
		public static const R				:String = "R";
		public static const S				:String = "S";
		public static const T				:String = "T";
		public static const U				:String = "U";
		public static const V				:String = "V";
		public static const W				:String = "W";
		public static const X				:String = "X";
		public static const Y				:String = "Y";
		public static const Z				:String = "Z";
		public static const NUMPAD_0		:String = "NUMPAD 0";
		public static const NUMPAD_1		:String = "NUMPAD 1";
		public static const NUMPAD_2		:String = "NUMPAD 2";
		public static const NUMPAD_3		:String = "NUMPAD 3";
		public static const NUMPAD_4		:String = "NUMPAD 4";
		public static const NUMPAD_5		:String = "NUMPAD 5";
		public static const NUMPAD_6		:String = "NUMPAD 6";
		public static const NUMPAD_7		:String = "NUMPAD 7";
		public static const NUMPAD_8		:String = "NUMPAD 8";
		public static const NUMPAD_9		:String = "NUMPAD 9";
		public static const NUMPAD_MULTIPLY	:String = "NUMPAD MULTIPLY";
		public static const NUMPAD_PLUS		:String = "NUMPAD PLUS";
		public static const NUMPAD_ENTER	:String = "NUMPAD ENTER";
		public static const NUMPAD_MINUS	:String = "NUMPAD MINUS";
		public static const NUMPAD_DECIMAL	:String = "NUMPAD DECIMAL";
		public static const NUMPAD_DIVIDE	:String = "NUMPAD DIVIDE";
		public static const F1				:String = "F1";
		public static const F2				:String = "F2";
		public static const F3				:String = "F3";
		public static const F4				:String = "F4";
		public static const F5				:String = "F5";
		public static const F6				:String = "F6";
		public static const F7				:String = "F7";
		public static const F8				:String = "F8";
		public static const F9				:String = "F9";
		public static const F10				:String = "F10";
		public static const F11				:String = "F11";
		public static const F12				:String = "F12";
		public static const F13				:String = "F13";
		public static const F14				:String = "F14";
		public static const F15				:String = "F15";
		public static const SEMICOLON		:String = "SEMICOLON";
		public static const EQUAL			:String = "EQUAL";
		public static const COMMA			:String = "COMMA";
		public static const MINUS			:String = "MINUS";
		public static const PERIOD			:String = "PERIOD";
		public static const SLASH			:String = "SLASH";
		public static const BACKQUOTE		:String = "BACKQUOTE";
		public static const LEFT_BRACKET	:String = "LEFT BRACKET";
		public static const BACK_SLASH		:String = "BACK SLASH";
		public static const RIGHT_BRACKET	:String = "RIGHT BRACKET";
		public static const QUOTE			:String = "QUOTE";
		
		protected var _keyNames:Array;
		protected var _keyValues:Array;
		
		
		//******************************************************
		//******************************************************
		
		
		public function LpKeys()
		{
			_keyNames = new Array();
			_keyValues = new Array();
			
			_keyValues[BACKSPACE] 		= 8;
			_keyValues[TAB] 			= 9;
			_keyValues[ENTER] 			= 13;
			_keyValues[COMMAND] 		= 15;
			_keyValues[SHIFT] 			= 16;
			_keyValues[CONTROL] 		= 17;
			_keyValues[ALTERNATE] 		= 18;
			_keyValues[CAPS_LOCK] 		= 20;
			_keyValues[ESCAPE] 			= 27;
			_keyValues[SPACE] 			= 32;
			_keyValues[PAGE_UP] 		= 33;
			_keyValues[PAGE_DOWN] 		= 34;
			_keyValues[END] 			= 35;
			_keyValues[HOME] 			= 36;
			_keyValues[LEFT] 			= 37;
			_keyValues[UP] 				= 38;
			_keyValues[RIGHT] 			= 39;
			_keyValues[DOWN] 			= 40;
			_keyValues[INSERT] 			= 45;
			_keyValues[DELETE] 			= 46;
			_keyValues[NUMBER_0] 		= 48;
			_keyValues[NUMBER_1] 		= 49;
			_keyValues[NUMBER_2] 		= 50;
			_keyValues[NUMBER_3] 		= 51;
			_keyValues[NUMBER_4] 		= 52;
			_keyValues[NUMBER_5] 		= 53;
			_keyValues[NUMBER_6] 		= 54;
			_keyValues[NUMBER_7] 		= 55;
			_keyValues[NUMBER_8] 		= 56;
			_keyValues[NUMBER_9] 		= 57;
			_keyValues[A] 				= 65;
			_keyValues[B] 				= 66;
			_keyValues[C] 				= 67;
			_keyValues[D] 				= 68;
			_keyValues[E] 				= 69;
			_keyValues[F] 				= 70;
			_keyValues[G] 				= 71;
			_keyValues[H] 				= 72;
			_keyValues[I] 				= 73;
			_keyValues[J] 				= 74;
			_keyValues[K] 				= 75;
			_keyValues[L] 				= 76;
			_keyValues[M] 				= 77;
			_keyValues[N] 				= 78;
			_keyValues[O] 				= 79;
			_keyValues[P] 				= 80;
			_keyValues[Q] 				= 81;
			_keyValues[R] 				= 82;
			_keyValues[S] 				= 83;
			_keyValues[T] 				= 84;
			_keyValues[U] 				= 85;
			_keyValues[V] 				= 86;
			_keyValues[W] 				= 87;
			_keyValues[X] 				= 88;
			_keyValues[Y] 				= 89;
			_keyValues[Z] 				= 90;
			_keyValues[NUMPAD_0] 		= 96;
			_keyValues[NUMPAD_1] 		= 97;
			_keyValues[NUMPAD_2] 		= 98;
			_keyValues[NUMPAD_3] 		= 99;
			_keyValues[NUMPAD_4] 		= 100;
			_keyValues[NUMPAD_5] 		= 101;
			_keyValues[NUMPAD_6] 		= 102;
			_keyValues[NUMPAD_7] 		= 103;
			_keyValues[NUMPAD_8] 		= 104;
			_keyValues[NUMPAD_9] 		= 105;
			_keyValues[NUMPAD_MULTIPLY]	= 106;
			_keyValues[NUMPAD_PLUS] 	= 107;
			_keyValues[NUMPAD_ENTER] 	= 108;
			_keyValues[NUMPAD_MINUS] 	= 109;
			_keyValues[NUMPAD_DECIMAL] 	= 110;
			_keyValues[NUMPAD_DIVIDE] 	= 111;
			_keyValues[F1] 				= 112;
			_keyValues[F2] 				= 113;
			_keyValues[F3] 				= 114;
			_keyValues[F4] 				= 115;
			_keyValues[F5] 				= 116;
			_keyValues[F6] 				= 117;
			_keyValues[F7] 				= 118;
			_keyValues[F8] 				= 119;
			_keyValues[F9] 				= 120;
			_keyValues[F10] 			= 121;
			_keyValues[F11] 			= 122;
			_keyValues[F12] 			= 123;
			_keyValues[F13] 			= 124;
			_keyValues[F14] 			= 125;
			_keyValues[F15] 			= 126;
			_keyValues[SEMICOLON] 		= 186;
			_keyValues[EQUAL] 			= 187;
			_keyValues[COMMA] 			= 188;
			_keyValues[MINUS] 			= 189;
			_keyValues[PERIOD] 			= 190;
			_keyValues[SLASH] 			= 191;
			_keyValues[BACKQUOTE] 		= 192;
			_keyValues[LEFT_BRACKET] 	= 219;
			_keyValues[BACK_SLASH] 		= 220;
			_keyValues[RIGHT_BRACKET] 	= 221;
			_keyValues[QUOTE] 			= 222;
				
			_keyNames[8]	= BACKSPACE;
			_keyNames[9]	= TAB;
			_keyNames[13]	= ENTER;
			_keyNames[15]	= COMMAND;
			_keyNames[16]	= SHIFT;
			_keyNames[17]	= CONTROL;
			_keyNames[18]	= ALTERNATE;
			_keyNames[20]	= CAPS_LOCK;
			_keyNames[27]	= ESCAPE;
			_keyNames[32]	= SPACE;
			_keyNames[33]	= PAGE_UP;
			_keyNames[34]	= PAGE_DOWN;
			_keyNames[35]	= END;
			_keyNames[36]	= HOME;
			_keyNames[37]	= LEFT;
			_keyNames[38]	= UP;
			_keyNames[39]	= RIGHT;
			_keyNames[40]	= DOWN;
			_keyNames[45]	= INSERT;
			_keyNames[46]	= DELETE;
			_keyNames[48]	= NUMBER_0;
			_keyNames[49]	= NUMBER_1;
			_keyNames[50]	= NUMBER_2;
			_keyNames[51]	= NUMBER_3;
			_keyNames[52]	= NUMBER_4;
			_keyNames[53]	= NUMBER_5;
			_keyNames[54]	= NUMBER_6;
			_keyNames[55]	= NUMBER_7;
			_keyNames[56]	= NUMBER_8;
			_keyNames[57]	= NUMBER_9;
			_keyNames[65]	= A;
			_keyNames[66]	= B;
			_keyNames[67]	= C;
			_keyNames[68]	= D;
			_keyNames[69]	= E;
			_keyNames[70]	= F;
			_keyNames[71]	= G;
			_keyNames[72]	= H;
			_keyNames[73]	= I;
			_keyNames[74]	= J;
			_keyNames[75]	= K;
			_keyNames[76]	= L;
			_keyNames[77]	= M;
			_keyNames[78]	= N;
			_keyNames[79]	= O;
			_keyNames[80]	= P;
			_keyNames[81]	= Q;
			_keyNames[82]	= R;
			_keyNames[83]	= S;
			_keyNames[84]	= T;
			_keyNames[85]	= U;
			_keyNames[86]	= V;
			_keyNames[87]	= W;
			_keyNames[88]	= X;
			_keyNames[89]	= Y;
			_keyNames[90]	= Z;
			_keyNames[96]	= NUMPAD_0;
			_keyNames[97]	= NUMPAD_1;
			_keyNames[98]	= NUMPAD_2;
			_keyNames[99]	= NUMPAD_3;
			_keyNames[100]	= NUMPAD_4;
			_keyNames[101]	= NUMPAD_5;
			_keyNames[102]	= NUMPAD_6;
			_keyNames[103]	= NUMPAD_7;
			_keyNames[104]	= NUMPAD_8;
			_keyNames[105]	= NUMPAD_9;
			_keyNames[106]	= NUMPAD_MULTIPLY;
			_keyNames[107]	= NUMPAD_PLUS;
			_keyNames[108]	= NUMPAD_ENTER;
			_keyNames[109]	= NUMPAD_MINUS;
			_keyNames[110]	= NUMPAD_DECIMAL;
			_keyNames[111]	= NUMPAD_DIVIDE;
			_keyNames[112]	= F1;
			_keyNames[113]	= F2;
			_keyNames[114]	= F3;
			_keyNames[115]	= F4;
			_keyNames[116]	= F5;
			_keyNames[117]	= F6;
			_keyNames[118]	= F7;
			_keyNames[119]	= F8;
			_keyNames[120]	= F9;
			_keyNames[121]	= F10;
			_keyNames[122]	= F11;
			_keyNames[123]	= F12;
			_keyNames[124]	= F13;
			_keyNames[125]	= F14;
			_keyNames[126]	= F15;
			_keyNames[186]	= SEMICOLON;
			_keyNames[187]	= EQUAL;
			_keyNames[188]	= COMMA;
			_keyNames[189]	= MINUS;
			_keyNames[190]	= PERIOD;
			_keyNames[191]	= SLASH;
			_keyNames[192]	= BACKQUOTE;
			_keyNames[219]	= LEFT_BRACKET;
			_keyNames[220]	= BACK_SLASH;
			_keyNames[221]	= RIGHT_BRACKET;
			_keyNames[222]	= QUOTE;
		}
		
		
		
		//******************************************************
		
		
		/**
		 * The .
		 *
		 * @return	The .
		 */
		public function getKeyName(keyCode:uint):String
		{
			if (keyCode < _keyNames.length && _keyNames[keyCode] != undefined) 
			{
				return _keyNames[keyCode];
			} // END IF
			return "UNDEFINED";
		} // END GET keyName
		
		
		
		//******************************************************
		
		/**
		 * Typical format of a multiline document.
		 * 
		 * @param	param1	Describe param1 here.
		 */
		public function getKeyValue(keyName:String):int
		{
			if (_keyValues[keyName] && _keyValues[keyName] != undefined) 
			{
				return _keyValues[keyName];
			} // END IF
			return -1;
		} // END FUNCTION getKeyValue
		
		
		
		//******************************************************
		
		
		/**
		 * The .
		 *
		 * @return	The .
		 */
		public function get keys():int
		{
			return _keyNames.length;
		} // END GET keys
		
		
		//******************************************************
		//******************************************************
	} // END CLASS LpKeys
} // END PACKAGE