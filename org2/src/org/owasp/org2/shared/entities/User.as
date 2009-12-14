package org.owasp.org2.shared.entities
{
	import flash.utils.ByteArray;
	
	[Bindable]
	[Table(name="user")]
	public class User
	{
		[Id]
		[Column(name="user_id")]
		public var id:int;
		
		[Column(name="user_name")]
		public var userName:String;
		
		[Column(name="first_name")]
		public var firstName:String;
		
		[Column(name="last_name")]
		public var lastName:String;
		public var password:String;
		public var address:String;
		public var city:String;
		public var state:String;
		public var zip:String;
		public var phone:String;
		public var email:String;
		public var pic:ByteArray;
		
	}
}