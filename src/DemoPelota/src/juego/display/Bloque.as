package juego.display 
{
	import flash.geom.Point;
	/**
	 * ...
	 * @author 
	 */
	public final class Bloque extends juegoShape //No extendemos de proyectilShape por que el bloque no es un proyectil ;)
	{
	private var referencia:Point;
		public function Bloque(referencia:Point) 
		{
			this.graphics.beginFill(0x0); //Black as night
			this.graphics.drawRect(0, 0, 30, 100);
			this.graphics.endFill();
			this.referencia = referencia;
		}
		
		override protected function mover():void 
		{
			this.y = this.referencia.y - 50;
		}
		
	}

}