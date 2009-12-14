package org.owasp.org2.core.ui.presenters
{
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import flexunit.framework.TestCase;
	
	public class MainUIPresentationModelTest extends TestCase
	{
		// please note that all test methods should start with 'test' and should be public
		
		// Reference declaration for class to test
		private var model : org.owasp.org2.core.ui.presenters.MainUIPresentationModel;
		private var dispatcher:IEventDispatcher;
		public function MainUIPresentationModelTest(methodName:String=null)
		{
			super(methodName);
		}
		
		//This method will be called before every test function
		override public function setUp():void
		{
			super.setUp();
			
			dispatcher = new EventDispatcher();
			//model = new MainUIPresentationModel( dispatcher );
			model = new MainUIPresentationModel();
		}
		
		//This method will be called after every test function
		override public function tearDown():void
		{
			super.tearDown();
			model = null;
		}
		
		public function testMainUIPresentationModel():void
		{
			// Add your test logic here
			fail("Test method Not yet implemented");
		}
	}
}