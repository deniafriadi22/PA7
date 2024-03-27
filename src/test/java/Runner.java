package TestSuite;
import com.intuit.karate.junit5.Karate;

class Runner {
    @Karate.Test
    public Karate runPet(){
        return Karate.run("pet/pet").relativeTo((getClass()));
    }
    @Karate.Test
    public Karate runUser(){
        return Karate.run("pet/user").relativeTo((getClass()));
    }
}