package 
{
	import flash.display.Sprite;
	import juego.controladorJuego;
	
	/**
	 * ...
	 * @author 
	 */
	public class Main extends Sprite 
	{
		public static var stageWidth:Number;
		public static var stageHeight:Number;
		private var juego:juego.controladorJuego;
		public function Main():void 
		{
			stageWidth = this.stage.stageWidth;
			stageHeight = this.stage.stageHeight;
			juego = new juego.controladorJuego(this.stage);
		}
		
	}
	
}