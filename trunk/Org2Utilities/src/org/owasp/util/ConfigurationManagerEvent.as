package org.owasp.util
{
	import flash.events.Event;
	
	public class ConfigurationManagerEvent extends Event
	{
			
		public static const COMPLETE:String = "Complete";
      	public static const FAULT:String = "Fault";
		
		public var data:Object;
				
		public function ConfigurationManagerEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false) {
			super(type, bubbles, cancelable);
		}
		
	}
}