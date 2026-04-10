package examples.users;

import com.intuit.karate.junit5.Karate;

public class EditarUsuarioRunner {
    @Karate.Test
    Karate testEditarUsuario() {
        return Karate.run("editarUsuario").relativeTo(getClass());
    }
}
