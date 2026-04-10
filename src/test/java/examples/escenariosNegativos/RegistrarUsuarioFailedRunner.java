package examples.escenariosNegativos;

import com.intuit.karate.junit5.Karate;

public class RegistrarUsuarioFailedRunner {
    @Karate.Test
    Karate testRegistrarUsuarioFailed() {
        return Karate.run("RegistrarUsuarioFailed").relativeTo(getClass());
    }
}
