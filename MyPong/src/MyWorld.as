package
{
	import net.flashpunk.World;
	public class MyWorld extends World
	{
		public function MyWorld()
		{
			add(new MyEntity());
			add(new Paddle2());
			add(new Ball());
		}
	}
}

