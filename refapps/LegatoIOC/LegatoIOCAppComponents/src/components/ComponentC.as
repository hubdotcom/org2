package components
{
	import mx.controls.Alert;
	import interfaces.*;
	
	public class ComponentC
	{
		[Inject]	
		public var dependentComponent:InterfaceA;
		
		
		public function test():void
		{
			trace("ComponentC. InterfaceA object : " + this.dependentComponent); 
		}

	}
}