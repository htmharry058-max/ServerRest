package examples.usersExternalFile;

import com.intuit.karate.junit5.Karate;

public class ListarUsuarioExternalFileRunner {
    @Karate.Test
    Karate testListarUsuario() {
        return Karate.run("listarUsuarioExternalFile").relativeTo(getClass());
    }
}
