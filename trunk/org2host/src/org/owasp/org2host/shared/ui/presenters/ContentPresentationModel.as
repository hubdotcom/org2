package org.owasp.org2host.shared.ui.presenters
{
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	public class ContentPresentationModel extends EventDispatcher
	{
		public function ContentPresentationModel(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}