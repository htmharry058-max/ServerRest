package examples.usersExternalFile;

import com.intuit.karate.junit5.Karate;

public class EliminarUsuarioExternalFileRunner {
    @Karate.Test
    Karate testEliminarUsuario() {
        return Karate.run("eliminarUsuarioExternalFile").relativeTo(getClass());
    }
}
