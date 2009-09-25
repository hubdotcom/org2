package tests
{
	import components.SimpleComponent;
	
	import flexunit.framework.Assert;
	import flexunit.framework.TestCase;

	public class SimpleComponentTest extends TestCase
	{
		public function SimpleComponentTest(methodName:String=null)
		{
			super(methodName);
		}
		
		public function testInstantiation():void
		{
			var component:SimpleComponent = new SimpleComponent();
			Assert.assertNotNull("component is not null", component);
		}
		
		public function testIntentionalFail():void
		{
			var component:SimpleComponent = new SimpleComponent();
			Assert.assertNull("intentional fail", component);
		}
	}
}