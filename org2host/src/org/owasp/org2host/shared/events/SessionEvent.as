package org.owasp.org2host.shared.events
{
	import flash.events.Event;
	import org.owasp.org2host.shared.model.vos.User;
	
	public class SessionEvent extends Event
	{
		public function SessionEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			//TODO: implement function
			super(type, bubbles, cancelable);
		}
	}
}