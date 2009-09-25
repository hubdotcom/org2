package tests
{
	import flexunit.framework.TestCase;
	import flexunit.framework.Assert;

	public class SingleTest extends TestCase
	{
		public function SingleTest(methodName:String=null)
		{
			super(methodName);
		}
		
		public function testSample():void
		{
			Assert.assertTrue("testSample", 1==1);
		}
	}
}