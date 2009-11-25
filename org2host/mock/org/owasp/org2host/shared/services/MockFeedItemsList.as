package org.owasp.org2host.shared.services
{
	import mx.collections.ArrayCollection;
	
	import org.owasp.org2host.shared.model.vos.FeedItem;
	
	public class MockFeedItemsList
	{
		public static const FEEDITEMS_LIST:ArrayCollection = populateFeedItems();
		
		public static var count:int;
		
		public static function populateFeedItems():ArrayCollection
		{
			var feedItems:Array = new Array();
			
			var feedItem:FeedItem = new FeedItem();
			feedItem.id = count.toString();
			feedItem.title = "Test Feed Item 1";
			feedItem.content = "Finally, to reiterate, it is also valid to place a visual child (i.e. an implementation of mx.core.IUIComponent) in a <fx:Declarations> tag but it will not be added to the Container via the normal addChild() mechanism. The developer may instead decide to programmatically render this visual component at runtime.";
			feedItem.datePublished = new Date(2009, 11, 11).toDateString();
			count++;
			feedItems.push( feedItem );

			feedItem.id = count.toString();
			feedItem.title = "Test Feed Item 2";
			feedItem.content = "2 Finally, to reiterate, it is also valid to place a visual child (i.e. an implementation of mx.core.IUIComponent) in a <fx:Declarations> tag but it will not be added to the Container via the normal addChild() mechanism. The developer may instead decide to programmatically render this visual component at runtime.";
			feedItem.datePublished = new Date(2009, 11, 11).toDateString();
			count++;
			feedItems.push( feedItem );
			
			feedItem.id = count.toString();
			feedItem.title = "3 Test Feed Item 3";
			feedItem.content = "Finally, to reiterate, it is also valid to place a visual child (i.e. an implementation of mx.core.IUIComponent) in a <fx:Declarations> tag but it will not be added to the Container via the normal addChild() mechanism. The developer may instead decide to programmatically render this visual component at runtime.";
			feedItem.datePublished = new Date(2009, 11, 11).toDateString();
			count++;
			feedItems.push( feedItem );
			
			return new ArrayCollection( feedItems );
		}
	}
}