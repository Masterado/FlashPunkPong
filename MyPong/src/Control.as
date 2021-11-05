package
{
	import net.flashpunk.Entity;
	import net.flashpunk.utils.Input;
	import net.flashpunk.FP;

	public class Control extends Entity
	{
		public function Control()
		{

		}

		override public function update():void
		{
			y = Input.mouseY;
		
		}
	}
}