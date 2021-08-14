package;

import flixel.FlxSprite;

class HealthIcon extends FlxSprite
{
	/**
	 * Used for FreeplayState! If you use it elsewhere, prob gonna annoying
	 */
	public var sprTracker:FlxSprite;

	public function new(char:String = 'bf', isPlayer:Bool = false)
	{
		super();
		switch(char){
			default:
				loadGraphic(Paths.image('iconGrid'), true, 150, 150);
				animation.add('bf', [0, 1], 0, false, isPlayer);
				animation.add('bf-car', [0, 1], 0, false, isPlayer);
				animation.add('bf-christmas', [0, 1], 0, false, isPlayer);
				animation.add('bf-pixel', [0, 1], 0, false, isPlayer);
				animation.add('bf-pixel2', [0, 1], 0, false, isPlayer);
				animation.add('spooky', [2, 3], 0, false, isPlayer);
				animation.add('pico', [4, 5], 0, false, isPlayer);
				animation.add('mom', [6, 7], 0, false, isPlayer);
				animation.add('mom-car', [6, 7], 0, false, isPlayer);
				animation.add('tankman', [8, 9], 0, false, isPlayer);
				animation.add('face', [10, 11], 0, false, isPlayer);
				animation.add('dad', [12, 13], 0, false, isPlayer);
				animation.add('senpai', [21], 0, false, isPlayer);
				animation.add('senpai-pixel', [21], 0, false, isPlayer);
				animation.add('senpai-angry', [21], 0, false, isPlayer);
				animation.add('senpai-angry-pixel', [21], 0, false, isPlayer);
				animation.add('spirit', [22], 0, false, isPlayer);
				animation.add('spirit-pixel', [22], 0, false, isPlayer);
				animation.add('spirit-template', [22], 0, false, isPlayer);
				animation.add('bf-old', [14, 15], 0, false, isPlayer);
				animation.add('gf', [16], 0, false, isPlayer);
				animation.add('parents-christmas', [17], 0, false, isPlayer);
				animation.add('monster', [19, 20], 0, false, isPlayer);
				animation.add('monster-christmas', [19, 20], 0, false, isPlayer);

			case 'bf-bad' | 'gf-bad' | 'monster-iphone' | 'pico-bad':
				loadGraphic(Paths.image('extra_icons', 'week8'), true, 150, 150);
				animation.add('bf-bad', [0, 1], 0, false, isPlayer);
				animation.add('gf-bad', [2], 0, false, isPlayer);
				animation.add('monster-iphone', [5, 6], 0, false, isPlayer);
				animation.add('pico-bad', [3, 4], 0, false, isPlayer);
		}
		antialiasing = true;
		animation.play(char);
		scrollFactor.set();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 10, sprTracker.y - 30);
	}
}
