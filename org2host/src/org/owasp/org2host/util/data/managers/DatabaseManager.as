package org.owasp.org2host.util.data.managers
{
	import flash.data.SQLConnection;
	import flash.filesystem.File;
	
	import org.owasp.org2host.shared.interfaces.IDatabaseInitializer;
	import org.owasp.org2host.util.entities.managers.EntityManager;


	public class DatabaseManager
	{
		private var sqlConnection:SQLConnection;
		
		private var em:EntityManager = EntityManager.getInstance();
		
		public function createDatabase(useExisting:Boolean, isSample:Boolean, databaseInitializer:IDatabaseInitializer):void
		{
			var file:File = File.userDirectory.resolvePath("Databases/org2.db");
			var fileParent:File = file.parent;
			fileParent.createDirectory();
			
			if (!useExisting)
			{
				if (file.exists)
				{
					file.deleteFile();
				}
			}
			
			var isNewDB:Boolean = !file.exists;
			sqlConnection = new SQLConnection();
			sqlConnection.open(file);
			em.sqlConnection = sqlConnection;
			if (isNewDB) 
			{
				databaseInitializer.build(isSample, em);
			}
		}

	}
}