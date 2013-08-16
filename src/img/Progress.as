package img
{
	import com.greensock.TweenLite;
	
	import flash.display.Bitmap;
	import flash.display.Sprite;
	
	public final dynamic class Progress extends Sprite
	{
		private var _image:Bitmap;
		/** 初使化长度 **/
		private var _width:Number;
		private var _percent:Number;
		public function Progress( image:Bitmap, width:Number )
		{
			super();
			_image = image;
			_width = width;
			addChild( _image );
		}
		/**
		 * 
		 * @param percent
		 * 设置长度百分比，取值范围：0.0~1.0
		 * @param time
		 * 移动长度
		 * @param startPos
		 * 开始移动的位置，默认为-1表示从之前的位置开始移动，取值范围：0.0~1.0
		 * 
		 */		
		public function slide( percent:Number, time:uint, startPercent:Number = -1 ):void
		{
			if ( startPercent != -1 )
			{
				_image.width = _width * startPercent;
			}
			TweenLite.to( _image, time, { width:percent * _width } );
			_percent = percent;
		}
		public function get percent():Number
		{
			return _percent;
		}
		public function set percent( percent:Number ):void
		{
			_percent = percent;
			_image.width = _width * percent;
		}
	}
}