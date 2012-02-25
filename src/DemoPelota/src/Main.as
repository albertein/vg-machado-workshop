package 
{
	import flash.display.Sprite;
	
	/**
	 * ...
	 * @author 
	 */
	public class Main extends Sprite 
	{
		
		public function Main():void 
		{
			var pelota:Pelota = new Pelota();
			this.stage.addChild(pelota);
		}
		
	}
	
}