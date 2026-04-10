package examples.users;

import com.intuit.karate.junit5.Karate;

public class EliminarUsuarioRunner {
    @Karate.Test
    Karate testEliminarUsuario() {
        return Karate.run("eliminarUsuario").relativeTo(getClass());
    }
}
