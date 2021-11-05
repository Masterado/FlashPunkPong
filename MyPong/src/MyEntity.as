package{
	import net.flashpunk.Entity;
	import net.flashpunk.Sfx;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.Input;
	import net.flashpunk.FP;
	import net.flashpunk.utils.Key;
	import Ball
	public class MyEntity extends Entity
	{
	
		[Embed(source = 'assets/Paddle.jpg')] private const PLAYER:Class;
		public function MyEntity()
		{
			graphic = new Image(PLAYER);
			setHitboxTo(graphic);
			
			type = "paddle";
			
			
			
			
		}
		public var Pspeed:Number = 10;
		override public function update():void
		{
			if (Input.check(Key.A))
			{
				y = y - Pspeed;
			}
			if (Input.check(Key.S))
			{
				y = y + Pspeed;
			}
			var b:Ball = collide("ball", x, y) as Ball;

			
			if (b)
			{
				// Call the Ball's reflect.
				//Bounce.play();
				b.paddlebounce(b.BXspeed);
			
				
				
			}
		}

		
		
}
}