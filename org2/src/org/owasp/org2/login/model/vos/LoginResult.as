package org.owasp.org2.login.model.vos
{
	import org.owasp.org2.shared.model.vos.User;
	
	[Bindable]
	public class LoginResult
	{	
		public var message:String = "";
		public var status:Boolean = false;
		public var user:User = null;
	}
}