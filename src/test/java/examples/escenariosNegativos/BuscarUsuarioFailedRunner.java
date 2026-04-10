package examples.escenariosNegativos;

import com.intuit.karate.junit5.Karate;

public class BuscarUsuarioFailedRunner {
    @Karate.Test
    Karate testBuscarUsuarioFailed() {
        return Karate.run("buscarUsuarioFailed").relativeTo(getClass());
    }
}
