package org.owasp.util
{
	import flash.events.IEventDispatcher;
	
	public interface ILogger extends IEventDispatcher
	{
		function warn(message:String, ...rest):void
	}
}