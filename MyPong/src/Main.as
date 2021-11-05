package
{
	import net.flashpunk.Engine;
	import net.flashpunk.FP;
	import net.flashpunk.World;
	import Ball
	import MyWorld

	/**
	 * ...
	 * @author Julius
	 */
	public class Main extends Engine
	{
		
		public function Main()
		{
			super(1200, 600, 60, true);
			FP.world = new MyWorld;
		
		}
		override public function init():void
		{
		//	FP.world.ba.x = 400;
		//	FP.world.ba.y = 300;
			trace("Flashpunk Success");
		}
		
	}
	
}