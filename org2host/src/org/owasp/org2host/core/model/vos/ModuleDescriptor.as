package org.owasp.org2host.core.model.vos
{
	public class ModuleDescriptor
	{
		public var label:String;
		public var url:String;
		public var access:String;
		public function ModuleDescriptor( label:String, url:String, access:String)
		{
			this.label = label;
			this.url = url;
			this.access = access;
		}
	}
}