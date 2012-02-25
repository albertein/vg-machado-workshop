package juego.display 
{
	import air.update.events.DownloadErrorEvent;
	import flash.display.Shape;
	import juego.interfaces.juegoInterface;
	
	/**
	 * ...
	 * @author 
	 */
	public class juegoShape extends Shape implements juegoInterface
	{
		
		public function juegoShape() 
		{
			
		}
		
		public function enterFrame():void {
			mover();
			chechar();
		}
		protected function mover():void {
		
		}
		protected function chechar():void {
			
		}
		public function elimino():Boolean{
			return false;
		}
		
	}

}