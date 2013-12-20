package; 

import flixel.FlxG;
import flixel.FlxState;
import flixel.FlxSprite;
import flixel.util.loaders.TexturePackerData;

class PlayState extends FlxState
{
	private var NormalEarth:FlxSprite;
	private var WeirdEarth:FlxSprite;
	
	override public function create():Void 
	{
		super.create();
		
		FlxG.mouse.show("assets/cursor.png");
		
		var Galaxy = new TexturePackerData("assets/galaxy.json", "assets/galaxy.png");
		
		var Space = new FlxSprite(0, 0);
		Space.loadImageFromTexture(Galaxy, false, false, "space.png");
		add(Space);
		
		NormalEarth = new FlxSprite(384, 256);
		NormalEarth.loadGraphic("assets/earth.png");
		add(NormalEarth);
		
		WeirdEarth = new FlxSprite(384, 256);
		WeirdEarth.loadImageFromTexture(Galaxy, false, false, "earth.png");
		add(WeirdEarth);
		
		trace("Space: " + Space.width + "x" + Space.height);
		trace("Normal Earth: " + NormalEarth.width + "x" + NormalEarth.height);
		trace("Weird Earth: " + WeirdEarth.width + "x" + WeirdEarth.height); //Parameters the same as from the previous sprite in the atlas
	}
	
	override public function update():Void 
	{
		super.update();
		
		NormalEarth.angle += 1;
		WeirdEarth.angle += 1;
	}
}