package juego.display 
{
	/**
	 * ...
	 * @author 
	 */
	public final class Pelota extends proyectilShape 
	{
		
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
		}
		
		override protected function chechar():void 
		{
			if (this.y <= radio || this.y >= Main.stageHeight - radio)
				movY = -movY
			if (this.x <= radio || this.x >= Main.stageWidth - radio)
				movX = -movX;
		}
		
		public function cambiarXmov():void {
			movX = -movX;
		}
		
		public function cambiarYmov():void {
			movY = -movY;
		}
		
	}

}