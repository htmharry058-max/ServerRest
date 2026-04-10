package examples.usersExternalFile;

import com.intuit.karate.junit5.Karate;

public class BuscarUusarioExternalFileRunner {
    @Karate.Test
    Karate testBuscarUsuario() {
        return Karate.run("buscarUsuarioExternalFile").relativeTo(getClass());
    }
}
