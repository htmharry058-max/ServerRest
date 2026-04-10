package examples.escenariosNegativos;

import com.intuit.karate.junit5.Karate;

public class EliminarUsuarioFailedRunner {
    @Karate.Test
    Karate testEliminarUsuarioFailed() {
        return Karate.run("eliminarUsuarioFailed").relativeTo(getClass());
    }
}
