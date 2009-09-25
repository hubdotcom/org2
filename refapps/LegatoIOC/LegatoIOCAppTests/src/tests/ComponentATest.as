package tests
{
	import components.CompositeComponent;
	
	import flexunit.framework.TestCase;
	
	import interfaces.*;
	
	import org.mock4as.Mock;

	public class ComponentATest extends TestCase
	{
		public function ComponentATest(methodName:String=null)
		{
			super(methodName);
		}
		
		public function testMockComponentA():void
		{			
			var mockComponentA:MockComponentA = new MockComponentA();
			//mockComponentA.expects("testInterfaceA").noArgs().noReturn();
			mockComponentA.expects("testReturnParameter").withArgs("test").willReturn("testReturnParameter:Return");
			var composite:CompositeComponent = new CompositeComponent(mockComponentA);
			mockComponentA.verify();
			assertTrue(mockComponentA.errorMessage(), mockComponentA.success());
		}
		
	}
	

}

	import interfaces.*;
	import org.mock4as.Mock;

	class MockComponentA extends Mock implements InterfaceA
	{
		public function testInterfaceA():void
		{
			record("testInterfaceA");
		}
		
		public function testReturnParameter(value:String):String
		{
			record ("testReturnParameter", value);
			return this.expectedReturnFor("testReturnParameter") as String;
		}
	}