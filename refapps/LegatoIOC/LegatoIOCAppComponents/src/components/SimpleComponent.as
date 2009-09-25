package components
{
	import mx.controls.Alert;
	
	public class SimpleComponent
	{
		public var parameter:String;
		
		public function SimpleComponent()
		{
		}
		
		public function testComponent():void
		{
			trace("SimpleComponent, parameter : " + this.parameter);
		}

	}
}