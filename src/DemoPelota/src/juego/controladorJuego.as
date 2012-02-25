package juego 
{
	import flash.display.DisplayObjectContainer;
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.MouseEvent;
	import flash.geom.Point;
	import juego.display.Bloque;
	import juego.display.Pelota;
	
	/**
	 * ...
	 * @author 
	 */
	public final class controladorJuego extends EventDispatcher 
	{
		
		private var pelota:Pelota;
		private var player1:Bloque;
		private var puntoReferencia:Point = new Point();
		private var contenedor:DisplayObjectContainer;
		public function controladorJuego(contenedor:DisplayObjectContainer) 
		{
			this.contenedor = contenedor;
			pelota = new Pelota();
			player1 = new Bloque(puntoReferencia);
			this.contenedor.addChild(pelota);
			this.contenedor.addChild(player1);
			this.contenedor.addEventListener(Event.ENTER_FRAME, enterFrame);
			this.contenedor.addEventListener(MouseEvent.MOUSE_MOVE, mouseMove);
		}
		
		private function enterFrame(e:Event):void {
			pelota.enterFrame();
			player1.enterFrame();
			checarColisiones();
		}
		
		private function mouseMove(e:MouseEvent) {
			puntoReferencia.x = e.stageX;
			puntoReferencia.y = e.stageY;
		}
		
		private function checarColisiones():void {
			if (pelota.hitTestObject(player1)) {//Usamos la deteccion de coliciones interna de flash
				pelota.cambiarXmov();
				pelota.x = player1.x + player1.width + pelota.radio + 1;
			}
		}
		
	}

}