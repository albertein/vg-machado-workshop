package juego.display 
{
	/**
	 * ...
	 * @author 
	 */
	public class proyectilShape extends juegoShape 
	{
		
		protected var movX:Number;
		protected var movY:Number;
		protected var velocidad:Number;
		public var radio:Number;
		
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