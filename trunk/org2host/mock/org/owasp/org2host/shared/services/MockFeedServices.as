package org.owasp.org2host.shared.services
{

	import flash.events.EventDispatcher;
	
	import mx.collections.ArrayCollection;
	
	import org.owasp.org2host.shared.services.MockFeedItemsList;
	
	public class MockFeedServices extends EventDispatcher
	{
		public function getFeedItems():ArrayCollection
		{
			return MockFeedItemsList.FEEDITEMS_LIST;
		}
	}
}
