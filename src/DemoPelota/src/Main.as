package 
{
	import flash.display.Sprite;
	
	/**
	 * ...
	 * @author 
	 */
	public class Main extends Sprite 
	{
		public static var stageWidth:Number;
		public static var stageHeight:Number;
		public function Main():void 
		{
			stageWidth = this.stage.stageWidth;
			stageHeight = this.stage.stageHeight;
			var pelota:Pelota = new Pelota();
			this.stage.addChild(pelota);
		}
		
	}
	
}