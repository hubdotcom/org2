package org.owasp.org2.shared.interfaces
{
	import org.owasp.org2.util.entities.managers.EntityManager;

	public interface IDatabaseInitializer
	{
		function build(useSampleData:Boolean, entityManager:EntityManager):void;
	}
}