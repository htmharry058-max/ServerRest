package examples.escenariosNegativos;

import com.intuit.karate.junit5.Karate;

public class ListarUsuarioFailedRunner {

    @Karate.Test
    Karate testListarUsuarioFailed() {
        return Karate.run("listarUsuarioFailed").relativeTo(getClass());
    }
}
