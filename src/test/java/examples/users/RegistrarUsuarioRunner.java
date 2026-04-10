package examples.users;

import com.intuit.karate.junit5.Karate;

public class RegistrarUsuarioRunner {
    @Karate.Test
    Karate testRegistrarUsuario() {
        return Karate.run("registrarUsuario").relativeTo(getClass());
    }
}
