package examples.users;

import com.intuit.karate.junit5.Karate;

public class ListarUsuarioRunner {

    @Karate.Test
    Karate testListarUsuario() {
        return Karate.run("listarUsuario").relativeTo(getClass());
    }
}
