package org.owasp.org2.core.ui.presenters
{
	import org.owasp.org2.login.events.AuthorizationEvent;
	
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	public class ContentPresentationModel extends EventDispatcher
	{
		
		//-----------------------------------------------
		//    Constructor
		//-----------------------------------------------
		private var dispatcher:IEventDispatcher
		
		public function ContentPresentationModel( dispatcher:IEventDispatcher )
		{
			this.dispatcher = dispatcher;
		}
		
		//------------------------------------------------
		//   Public Methods
		//------------------------------------------------
		public function logOut():void
		{
			var event:AuthorizationEvent = new AuthorizationEvent( AuthorizationEvent.LOGOUT );
			dispatcher.dispatchEvent( event );
		}
	}

}