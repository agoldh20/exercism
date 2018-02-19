import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class GreeterTest {

    @Test
    public void testThatGreeterReturnsTheCorrectGreeting() {
        Greeter g = new Greeter();

        String x = g.getGreeting();

        int y = Integer.getInteger(x);
        assertEquals(1, y);
    }

}
