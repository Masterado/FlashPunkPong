package{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.Engine;
	import net.flashpunk.FP;
	import net.flashpunk.Sfx;
	public class Ball extends Entity
	{
		[Embed(source = "Assets/hit.mp3")]private const BOUNCE:Class;
		public var Bounce:Sfx = new Sfx(BOUNCE);
		[Embed(source = "Assets/Loss2.mp3")]private const SCORE:Class;
		public var Score:Sfx= new Sfx(SCORE);
		
		[Embed(source = 'assets/Ball.jpg')] private const PUCK:Class;
		public function Ball()
		{
			graphic = new Image(PUCK);
			setHitboxTo(graphic);
			x =600;
			y =300;
			type = "ball";
		}
		public var side:Number = 1;
		public var Bspeed:Number = 1;
		public var BYspeed:Number = 1;
		public var BXspeed:Number = 1;
		public var Turn:Number = 1;
		override public function update():void
		{
			x += BXspeed;
			y += BYspeed;
			if(Bspeed >= 15){
				Bspeed = 15; }
			else if (Turn ==-1){
				trace("faster");
				Bspeed += 1; }
			Turn = 1;
			if(BXspeed>0){
				BXspeed = Bspeed; }
			else{
				BXspeed = Bspeed *-1;}
			if(BYspeed>0){
				BYspeed = Bspeed;}
			else{
				BYspeed = Bspeed *-1; }
				
			if(y<=50 || y>= 550){
				BYspeed=wallbounce(BYspeed); }
			
			if (x <= 10 || x >= 1190){
				Score.play();
				FP.world.remove(this);}
			}
		public function wallbounce(Yspeed:int):int{
			Yspeed = Yspeed * -1;
			return Yspeed;
		}
		public function paddlebounce(Xspeed:int):int{
			Bounce.play();
			trace(Bounce.length);
			Xspeed = Xspeed * -1;
			Turn =-1;
			side = side *-1;
			BXspeed = Xspeed;
			return Xspeed;}	
		 
		
		}
	}
