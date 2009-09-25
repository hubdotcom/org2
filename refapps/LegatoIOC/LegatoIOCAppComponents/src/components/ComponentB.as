package components
{
	import mx.controls.Alert;
	import interfaces.*;
	
	public class ComponentB
	{
		
		public var dependentComponent:InterfaceA;

		
		public function test():void
		{
			trace("ComponentB. InterfaceA object : " + this.dependentComponent); 
		}

	}
}