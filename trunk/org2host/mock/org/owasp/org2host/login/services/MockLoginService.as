package org.owasp.org2host.login.services
{
	import org.owasp.org2host.login.model.vos.LoginResult;
	import org.owasp.org2host.shared.model.vos.User;
	import org.owasp.org2host.shared.services.MockUserList;
	
	import flash.events.EventDispatcher;
	
	
	public class MockLoginService extends EventDispatcher
	{
		public function login( username:String, password:String ):LoginResult
		{
			var loginResult:LoginResult = new LoginResult();
			for each( var user:User in MockUserList.USER_LIST)
			{
				if( user.userName == username && user.password == password)
				{
					loginResult.status = true;
					loginResult.user = user;
					break;
				}
			}
			if( !loginResult.status )
			{
				loginResult.message = "Login Failed please make sure that the username and password is correct.";
			}
			return loginResult;
		}
	}
}
