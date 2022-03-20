package {

	import flash.display.*;
	import flash.geom.ColorTransform;

	public class Glitch extends MovieClip {

		public var myColorTransfor: ColorTransform;
		public var red: Number;
		public var green: Number;
		public var blue: Number;

		public function Glitch(gliX: Number, gliY: Number) {
			this.x = gliX;
			this.y = gliY;
		}
	}
}