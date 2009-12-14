package org.owasp.org2.shared.services
{
	import org.owasp.org2.shared.model.vos.User;
	import org.owasp.org2.shared.model.vos.UserPermissions;
	
	import mx.collections.ArrayCollection;
	
	public class MockUserList
	{
		public static const USER_LIST:ArrayCollection = populateUsers();
		
		public static var count:int;
		
		public static function populateUsers():ArrayCollection
		{
			var users:Array = new Array();
			var user:User = new User();
			user.userName = "admin";
			user.permissions = UserPermissions.ADMIN;
			user.password = "mate";
			user.firstName = "Mark";
			user.lastName = "Smith";
			user.id = count.toString();
			count++;
			users.push( user );
			
			var regularUser:User = new User();
			regularUser.userName = "guest";
			regularUser.permissions = UserPermissions.READ_ONLY;
			regularUser.password = "mate";
			regularUser.firstName = "Gary";
			regularUser.lastName = "Jones";
			user.id = count.toString();
			count++;
			users.push( regularUser );
			
			return new ArrayCollection( users );
		}
	}
}
