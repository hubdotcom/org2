package org.owasp.org2host.login.model.vos
{
	import org.owasp.org2host.shared.model.vos.User;
	
	[Bindable]
	public class LoginResult
	{	
		public var message:String = "";
		public var status:Boolean = false;
		public var user:User = null;
	}
}