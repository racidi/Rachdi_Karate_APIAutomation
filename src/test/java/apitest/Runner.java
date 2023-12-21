package apitest;

import com.intuit.karate.Results;
import com.intuit.karate.junit5.Karate;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertTrue;

public class Runner {
        //Create User
//    @Karate.Test
//    public Karate runPost(){
//        return Karate.run("createUserRequest").relativeTo(getClass());
//    }

        //Check created user
    @Karate.Test
//    public Karate runGet(){
//        return Karate.run("getUserRequest").relativeTo(getClass());
//    }

        //Run All Test Case
    @Test
    void testParallel() {
        Results results = com.intuit.karate.Runner.path("classpath:apitest").parallel(1);
        assertTrue(results.getFailCount() == 0, results.getErrorMessages());
    }

}
