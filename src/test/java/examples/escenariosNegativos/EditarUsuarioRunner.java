package examples.escenariosNegativos;

import com.intuit.karate.junit5.Karate;

public class EditarUsuarioRunner {
    @Karate.Test
    Karate testEditarUsuarioFailed() {
        return Karate.run("editarUsuarioFailed").relativeTo(getClass());
    }
}
