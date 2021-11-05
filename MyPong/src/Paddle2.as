package{
	import net.flashpunk.Entity;
	import net.flashpunk.Sfx;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.Input;
	import net.flashpunk.FP;
	import net.flashpunk.utils.Key;
	import Ball
	public class Paddle2 extends Entity
	{
		[Embed(source = 'assets/hit.mp3')]private const BOUNCE:Class;

		public var Bounce:Sfx = new Sfx(BOUNCE);
		[Embed(source = 'assets/Paddle.jpg')] private const PLAYER:Class;
		public function Paddle2()
		{
			graphic = new Image(PLAYER);
			setHitboxTo(graphic);
			type = "paddle";
			x = 1200 - width;
		}
		public var Pspeed:Number = 10;
		override public function update():void
		{
			if (Input.check(Key.K))
			{
				y = y - Pspeed;
			}
			if (Input.check(Key.L))
			{
				y = y + Pspeed;
			}
			var b:Ball = collide("ball", x, y) as Ball;

			
			if (b)
			{
				// Call the Ball's reflect.
				b.paddlebounce(b.BXspeed);
				//Bounce.play();
			
			}
		}

		
		
}
}