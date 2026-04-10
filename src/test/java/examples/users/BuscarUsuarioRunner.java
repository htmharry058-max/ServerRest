package examples.users;

import com.intuit.karate.junit5.Karate;

public class BuscarUsuarioRunner {
    @Karate.Test
    Karate testBuscarUsuario() {
        return Karate.run("buscarUsuario").relativeTo(getClass());
    }
}
