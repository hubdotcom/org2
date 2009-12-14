package org.owasp.org2.shared.events
{
	import org.owasp.org2.shared.model.vos.User;
	
	import flash.events.Event;
	
	public class SessionEvent extends Event
	{
		
		//--------------------------------------
		//   Public Constants
		//--------------------------------------
		public static const NEW_SESSION:String = "newSession_SessionEvent";
		
		//--------------------------------------
		//    Public Properties
		//--------------------------------------
		public var user:User;
		
		
		//----------------------------------------
		//     Constructor
		//----------------------------------------
		public function SessionEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
	}
}