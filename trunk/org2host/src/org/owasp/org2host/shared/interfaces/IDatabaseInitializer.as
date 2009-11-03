package org.owasp.org2host.shared.interfaces
{
	import org.owasp.org2host.util.entities.managers.EntityManager;

	public interface IDatabaseInitializer
	{
		function build(useSampleData:Boolean, entityManager:EntityManager):void;
	}
}