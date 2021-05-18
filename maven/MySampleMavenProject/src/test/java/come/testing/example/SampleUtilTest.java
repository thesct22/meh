package come.testing.example;

import static org.junit.Assert.*;

import org.junit.Test;

public class SampleUtilTest {
	@Test 
	public void testAdd() {
		System.out.println("add");
		Integer a=15;
		Integer b=15;
		Integer exp=30;
		Integer res=SampleUtil.add(a, b);
		assertEquals(exp,res);
	}
	
	@Test 
	public void testAdd1() {
		assertEquals(null,SampleUtil.add(5, null));
	}
	@Test
	public void testAdd2() {
		assertEquals(null,SampleUtil.add(null, 25));
	}
	@Test
	public void testAdd3() {
		assertEquals(null,SampleUtil.add(null, null));
	}
}
