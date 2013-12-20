package;

import flash.Lib;
import flash.events.Event;
import flixel.FlxGame;
import flixel.FlxG;
	
class GameClass extends FlxGame
{	
	static inline private var _w:Int = 1024;
	static inline private var _h:Int = 768;
	
	public function new()
	{
		var stageWidth:Int = Lib.current.stage.stageWidth;
		var stageHeight:Int = Lib.current.stage.stageHeight;
		
		var ratioX:Float = stageWidth / _w;
		var ratioY:Float = stageHeight / _h;
		var ratio:Float = Math.min(ratioX, ratioY);
		
		var fps:Int = 60;
		
		super(Math.ceil(stageWidth / ratio), Math.ceil(stageHeight / ratio), PlayState, ratio, fps, fps, true);
	}
		
	override public function onResize(?E:flash.events.Event):Void
	{
		super.onResize();
		
		var stageWidth:Int = Lib.current.stage.stageWidth;
		var stageHeight:Int = Lib.current.stage.stageHeight;
		
		scaleX = stageWidth / _w;
		scaleY = stageHeight / _h;
	}
}