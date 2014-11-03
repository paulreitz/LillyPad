package com.lillypad.interfaces
{
	public interface LpStateListener
	{
		function exitState():void;
		function enterState():void;
		function paused():void;
		function resumed():void;
	}
}