package org.owasp.model
{
	import __AS3__.vec.Vector;
	import org.owasp.provider.IProvider;
	import flash.events.IEventDispatcher;

	public interface IMainHost extends IEventDispatcher
	{
		function get Providers():Vector.<IProvider>;
		function set Providers( providers : Vector.<IProvider>) : void;
	}
}