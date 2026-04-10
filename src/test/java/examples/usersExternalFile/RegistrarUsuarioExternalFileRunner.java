package examples.usersExternalFile;

import com.intuit.karate.junit5.Karate;

public class RegistrarUsuarioExternalFileRunner {
    @Karate.Test
    Karate testRegistrarUsuario() {
        return Karate.run("registrarUsuarioExternalFile").relativeTo(getClass());
    }
}
