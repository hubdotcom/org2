 package org.owasp.org2.util
{
	public class Config
	{
		/*-.........................................Constants............................*/
		

		
		/*-.........................................Properties............................*/

		
		
		/*-.........................................Methods...............................*/
		public function readConfig(xml:XML, data:Object):void
		{
			data.providers = xml..providers;
			data.settings = xml..settings;
		}
		
	}
}