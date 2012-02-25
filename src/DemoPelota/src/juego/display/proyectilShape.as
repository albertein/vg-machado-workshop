package juego.display 
{
	/**
	 * ...
	 * @author 
	 */
	public class proyectilShape extends juegoShape 
	{
		
		private var movX:Number;
		private var movY:Number;
		private var velocidad:Number;
		private var radio:Number;
		
		public function proyectilShape() 
		{
			
		}

		override protected function mover():void 
		{
			this.x += velocidad * movX;
			this.y += velocidad * movY;
		}
		
		override protected function chechar():void 
		{
		}
	}

}