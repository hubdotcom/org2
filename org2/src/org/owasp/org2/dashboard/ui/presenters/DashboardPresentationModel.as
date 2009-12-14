package org.owasp.org2.dashboard.ui.presenters
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import org.owasp.org2.shared.model.vos.User;
	import org.owasp.org2.shared.model.vos.UserPermissions;
	
	public class DashboardPresentationModel extends EventDispatcher
		{
			//--------------------------------------------------------------------
			//    Public Constants
			//--------------------------------------------------------------------
			public static const EDIT_ENABLED:String 	= "editEnabled";
			public static const EDIT_DISABLED:String	= "editDisabled";
			public static const EDIT_FORM:String		= "editForm";
			
			//--------------------------------------------------------------------
			//    Public Setters and Getters
			//--------------------------------------------------------------------
			
			//.................currentUser......................
			private var _currentUser:User;
			public function set currentUser( user:User ):void
			{
				_currentUser = user;
				var newState:String;
				if( user == null || user.permissions == UserPermissions.READ_ONLY )
				{
					newState = EDIT_DISABLED;
					
				}
				else if( user.permissions != UserPermissions.READ_ONLY && state == EDIT_DISABLED)
				{
					newState = EDIT_ENABLED;
				}
				
				if( _state != newState )
				{
					_state = newState;
					dispatchEvent( new Event( "stateChange" ) );
				}
			}
			
			//.................state......................
			private var _state:String = EDIT_DISABLED;
			[Bindable(Event="stateChange")]
			public function get state():String
			{
				return _state;
			}
			
			//--------------------------------------------------------------------
			//    Constructor
			//--------------------------------------------------------------------
			
			private var dispatcher:IEventDispatcher;
			public function DashboardPresentationModel( dispatcher:IEventDispatcher )
			{
				this.dispatcher = dispatcher;
			}
			
			
			//--------------------------------------------------------------------
			//    Public Methods
			//--------------------------------------------------------------------
			
/*			//.................addContact......................
			public function addContact():void
			{
				_state = EDIT_FORM;
				dispatchEvent( new Event( "stateChange" ) );
				unselectContact();
			}
			
			//.................unselectContact......................
			private function unselectContact():void
			{
				var event:ContactEvent = new ContactEvent ( ContactEvent.CONTACT_SELECT );
				event.contact = null;
				dispatcher.dispatchEvent( event );
			}*/
		}

}