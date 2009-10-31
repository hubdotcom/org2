package org.owasp.org2host.shared.model.managers
{
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	public class PermissionsManager extends EventDispatcher
	{
		public function PermissionsManager(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}