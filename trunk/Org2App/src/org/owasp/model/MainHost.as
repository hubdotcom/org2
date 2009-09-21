package org.owasp.model
{
	import __AS3__.vec.Vector;
	
	import flash.events.Event;
	import flash.events.EventDispatcher;
	
	import org.owasp.provider.IProvider;
  
	public class MainHost implements IMainHost
	{
		private var _providers : Vector.<IProvider>
		private var eventDispatcher:EventDispatcher;

		public function MainHost()
		{
			eventDispatcher = new EventDispatcher();
   		}
    
        
    public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = false):void {
      eventDispatcher.addEventListener(type, listener, useCapture, priority);
    }
    
    public function dispatchEvent(event:Event):Boolean {
      return eventDispatcher.dispatchEvent(event);
    }
    
    public function hasEventListener(type:String):Boolean {
      return eventDispatcher.hasEventListener(type);
    }
    
    public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false):void {
      eventDispatcher.removeEventListener(type, listener, useCapture);
    }
    
    public function willTrigger(type:String):Boolean {
      return eventDispatcher.willTrigger(type);
    }
		
		public function get Providers() : Vector.<IProvider>
		{
			return _providers;
		}
		
		public function set Providers( providers : Vector.<IProvider> ) : void
		{
			_providers = providers;
		}
	}
}