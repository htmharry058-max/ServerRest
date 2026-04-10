package examples.usersExternalFile;

import com.intuit.karate.junit5.Karate;

public class EditarUsuarioExternalFileRunner {
    @Karate.Test
    Karate testEditarUsuario() {
        return Karate.run("editarUsuarioExternalFile").relativeTo(getClass());
    }
}
