package org.owasp.org2host.shared.data
{
	import org.owasp.org2host.shared.entities.User;
	import org.owasp.org2host.shared.interfaces.IDatabaseInitializer;
	import org.owasp.org2host.util.crypto.OneWayHash;
	import org.owasp.org2host.util.entities.managers.EntityManager;
	
	//TODO:checkout event to throw a complete event
	public class DatabaseInitializer implements IDatabaseInitializer
	{
		private var _em:EntityManager
		public function build(useSampleData:Boolean, entityManager:EntityManager):void
		{
			_em = entityManager;
			addDefaultUsers();
		}
		
		public function addDefaultUsers():void
		{
			var user:User = new User();
			user.userName = "admin";
			user.password = OneWayHash.encrypt("mate", OneWayHash.CRYPTO_SHA256);
			
			_em.save(user);
		}
		public function addSampleUsers():void
		{
			var user:User = new User();
			user.firstName = "Mark";
			user.lastName = "Roxberry";
			user.zip = "08002";
			
			_em.save(user);
		}
		
		public function addSampleProviders():void
		{
		}
	}
}