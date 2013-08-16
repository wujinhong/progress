package
{
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.utils.getDefinitionByName;
	import flash.utils.getQualifiedClassName;
	
	import img.Progress;

	public class Test2 extends Sprite
	{
		[Embed(source="img/progress.png")]
		private var _progressClass:Class;
		
		private var _progress:Progress;
		
		public function Test2()
		{
			var t:Test = new Test();
			var tt:* = clone(t);
			trace(tt);
			
			_progress = new Progress( new _progressClass(), 200 );
			addChild( _progress );
			_progress.slide( 0.2, 4 );
			_progress.x = _progress.y = 50;
			
			_progress.fuckyou = 5000;// because of :dynamic class
			trace( _progress.fuckyou );
		}
		public static function clone(o:*):*
		{
			var cls:Class = getDefinitionByName(getQualifiedClassName(o)) as Class;
			return new cls();
		}
	}
}