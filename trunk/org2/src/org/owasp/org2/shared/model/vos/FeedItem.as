package org.owasp.org2.shared.model.vos
{
	[Bindable]
	public class FeedItem
	{
		public var content:String;
		public var title:String;
		public var datePublished:String;
		public var id:String;
		
		public function FeedItem( feedItem:FeedItem = null )
		{
			if( feedItem ) copyFrom( feedItem );
		}
		
		public function copyFrom( feedItem:FeedItem ):void
		{
			id				= feedItem.id;
			title			= feedItem.title;
			datePublished	= feedItem.datePublished;
			content			= feedItem.content;
		}
	}
}