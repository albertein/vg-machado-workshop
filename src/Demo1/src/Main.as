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
			var sprite1:Sprite = new Sprite();
			sprite1.graphics.beginFill(0xFF0000, 1); // Color as 0xRRGGBB
			sprite1.graphics.drawRect(0, 0, 150, 100);
			this.stage.addChild(sprite1); //Add sprite to the main stage
			sprite1.x = 300;
			sprite1.y = 300;
		}
		
	}
	
}