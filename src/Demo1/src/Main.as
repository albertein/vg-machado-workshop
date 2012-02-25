package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	
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
			sprite1.graphics.endFill();
			this.stage.addChild(sprite1); //Add sprite to the main stage
			sprite1.x = 300;
			sprite1.y = 300;
			
			var sprite2:Sprite = new Sprite();
			sprite2.graphics.beginFill(0xFFF000, 1);
			sprite2.graphics.drawRect(0, 0, 50, 50);
			sprite2.graphics.endFill();
			
			sprite2.x = 10;
			sprite2.y = 10;
			this.stage.addChild(sprite2);
			
			sprite1.addEventListener(Event.ENTER_FRAME, mover); 
		}
		
		private function mover(e:Event):void {
			e.target.x += 1;
			e.target.y += 1;
		}
		
	}
	
}