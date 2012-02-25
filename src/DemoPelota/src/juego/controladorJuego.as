package juego 
{
	import flash.display.DisplayObjectContainer;
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import juego.display.Pelota;
	
	/**
	 * ...
	 * @author 
	 */
	public final class controladorJuego extends EventDispatcher 
	{
		
		private var pelota:Pelota;
		private var contenedor:DisplayObjectContainer;
		public function controladorJuego(contenedor:DisplayObjectContainer) 
		{
			this.contenedor = contenedor;
			pelota = new Pelota();
			this.contenedor.addChild(pelota);
			this.contenedor.addEventListener(Event.ENTER_FRAME, enterFrame);
		}
		
		private function enterFrame(e:Event):void {
			pelota.enterFrame();
		}
		
	}

}