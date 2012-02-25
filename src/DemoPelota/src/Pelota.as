package  
{
	import flash.display.Sprite;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author 
	 */
	public class Pelota extends Sprite 
	{
		
		private var movX:Number;
		private var movY:Number;
		private var velocidad:Number;
		private var radio:Number;
		
		public function Pelota() 
		{
			this.graphics.beginFill(0xFF0000, 1);
			radio = 30;
			this.graphics.drawCircle(0, 0, radio); // (x, y) representan el centro del circulo
			this.graphics.endFill();
			movX = 1;
			movY = .3;
			velocidad = 5;
			this.x = 40;
			this.y = 40;
			this.addEventListener(Event.ENTER_FRAME, mover);
		}
		
		private function mover(e:Event):void { //Animar pelota
			this.x += velocidad * movX;
			this.y += velocidad * movY;
			checar();
		}
		
		private function checar():void {
			if (this.y <= radio || this.y >= Main.stageHeight - radio)
				movY = -movY
			if (this.x <= radio || this.x >= Main.stageWidth - radio)
				movX = -movX;
		}
		
	}

}