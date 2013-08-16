package
{
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	
	public class Test extends Sprite
	{
		[Embed(source="img/vim.png")]
		private var vim:Class;
		private var img:Bitmap;
		private var str:String;
		private var spr:Sprite;
		
		public function Test()
		{
			img = new vim();
			img.bitmapData.lock();
			spr = new Sprite();
			spr.addChild(img);
			addChild(spr);
			spr.addEventListener(MouseEvent.MOUSE_DOWN,down);
			spr.addEventListener(MouseEvent.MOUSE_UP,up);
			
			str = "She sells seashells by the seashore.";
			var myPattern:RegExp = /sh/;  
			trace(str.replace(/sh/, "sch"));
			
			with(Math)
			{
				trace(round(5.5));//返回最近的整数。
				trace(floor(5.5));//返回最接近且小于等于参数 val 的整数。
				trace(ceil(5.5));//返回最接近且大于等于参数 val 的整数。
			}
		}
		
		protected function up(event:MouseEvent):void
		{
			spr.stopDrag();
		}
		
		protected function down(event:MouseEvent):void
		{
			spr.startDrag();
		}
		/**
		 * @#
		 * 
		 */
		private function kk():void
		{
		}
	}
}