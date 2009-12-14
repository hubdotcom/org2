 package org.owasp.org2.util
{
	public class Config
	{
		/*-.........................................Constants............................*/
		
		
		/*-.........................................Methods...............................*/
		public function readConfig(xml:XML, data:Object):void
		{
			data.providers = xml..providers;
		}
		
	}
}