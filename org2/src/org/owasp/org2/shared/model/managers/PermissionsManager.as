package org.owasp.org2.shared.model.managers
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	
	import org.owasp.org2.shared.model.vos.ModuleDescriptor;
	import org.owasp.org2.shared.model.vos.User;
	import org.owasp.org2.shared.model.vos.UserPermissions;
	
	public class PermissionsManager extends EventDispatcher
	{
		
		//-------------------------------------------------------------------------------------------
		//      Public Setters and Getters
		//-------------------------------------------------------------------------------------------
		
		//.........................................modulesAllowed....................................
		private var _modulesAllowed:Array;
		[Bindable(Event="permissionsChange")]
		public function get modulesAllowed():Array
		{
			return _modulesAllowed;
		}
		
		//.........................................isAdmin..........................................
		private var _isAdmin:Boolean;
		[Bindable(Event="permissionsChange")]
		public function get isAdmin():Boolean
		{
			return _isAdmin;
		}
		
		private var _providers:Array;
		
		public function setProviders(providers:XMLList):void
		{
			_providers  = new Array();
			var childCount:int = providers.children().length();
			for (var i:int; i < childCount; i++) {
				_providers.push(new ModuleDescriptor(providers.provider[i].@label, providers.provider[i].@url, providers.provider[i].@access));
			}
		}
		
		//---------------------------------------------------------------------------------------------------
		//     Public Methods
		//---------------------------------------------------------------------------------------------------
		
		//.........................................setPermissions..........................................
		public function setPermissions( user:User ):void
		{
			_modulesAllowed = new Array();
			//_modulesAllowed.push( new ModuleDescriptor( "Start Page", "org/owasp/org2/startpage/StartPage.swf", UserPermissions.READ_WRITE.permission ) );
			if( user.permissions == UserPermissions.ADMIN )
			{
				//_modulesAllowed.push( new ModuleDescriptor( "Admin", "com/asfusion/intranet/admin/Admin.swf" ) );
				_modulesAllowed = _providers;
			}
			else
			{
				_modulesAllowed = _providers.filter(checkAccess);
			}
			_isAdmin = ( user.permissions == UserPermissions.ADMIN );
			dispatchEvent( new Event( "permissionsChange" ) );
		}
		
		//TODO: streamline how we create the modulesAllowed array
		private function checkAccess(element:*, index:int, arr:Array):Boolean {
			return (element.access == UserPermissions.READ_ONLY.permission || element.access == UserPermissions.READ_WRITE.permission);
		}
	}
}