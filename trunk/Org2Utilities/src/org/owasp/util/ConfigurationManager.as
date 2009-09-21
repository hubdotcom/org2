package org.owasp.util
{
	import flash.events.EventDispatcher;
	import flash.events.Event;  
    import flash.events.EventDispatcher;  
    import flash.events.IEventDispatcher;  
    import flash.events.IOErrorEvent;  
    import flash.events.SecurityErrorEvent;  
    import flash.net.URLLoader;  
    import flash.net.URLRequest;  
      
    import mx.controls.Alert;  
      
    [Event(name="complete", type="org.owasp.util.ConfigurationManagerEvent")]  
    [Event(name="fault", type="org.owasp.util.ConfigurationManagerEvent")]  
    
	public class ConfigurationManager extends EventDispatcher
	{
		private var _configFile:String;  
        private var _xml:XML;  
        private var _loader:URLLoader;  
        
		public function ConfigurationManager(configFile:String)
		{
			super();
			_configFile = configFile;
		}

		public function loadConfig():void {
			var request:URLRequest = new URLRequest(_configFile);
			_loader = new URLLoader();
			
			// add some event listeners
			_loader.addEventListener(Event.COMPLETE,onComplete);
			//_loader.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
			//_loader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,onSecurityError);
			
			// try to load the xml file 
			try {
				_loader.load(request);
			}catch (e:Error) {
				Alert.show("Error: " + e.toString(),"Load Settings Error");
			}
		}

		public function onComplete(event:Event):void {
			try {
				// convert text to xml
				_xml = new XML(event.target.data);
				
				// dispatch event
				var cmEvent:ConfigurationManagerEvent = new ConfigurationManagerEvent(ConfigurationManagerEvent.COMPLETE);
				cmEvent.data = _xml;
				dispatchEvent(cmEvent);		
				
			} catch(e:TypeError) {
				Alert.show("Error converting string to xml","XML Conversion error");
			}
		}

		public function getValue(val:String):String {
			return _xml[val];
		}

	}
}