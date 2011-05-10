// FullScreen
// Author : Andy Lyon
// Date : 11/12/2008
//
// This work is licensed under a Creative Commons  2.0 License.
//
// Full details at
// http://creativecommons.org/licenses/by/2.0/uk/

package com.ipolar.fullscreen
{
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.events.Event;
	
	public class FullScreen extends Sprite
	{
		private var fsButton1:fullscreenButton;
		
		public function FullScreen():void
		{
			initButton();
			initListners();
		}
		
		private function initButton():void
		{
			// Init button from library with a class name of 'fullscreenButton'
			fsButton1 = new fullscreenButton();
			fsButton1.x = 50;
			fsButton1.y = 50;
			addChild( fsButton1 );
		}
		
		private function initListners():void
		{
			fsButton1.addEventListener(MouseEvent.CLICK, fullscreen_el);
		}
		
		function fullscreen_el(event:MouseEvent):void
		{
			switch(stage.displayState) {
				case "normal":
					stage.displayState = "fullScreen";
					break;
				case "fullScreen":
					default:
					stage.displayState = "normal";
					break;
			}
			
			trace("Toggle Fullscreen!");
		}
	}
}