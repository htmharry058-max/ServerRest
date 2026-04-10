# 🚀 API Automation Suite - ServeRest (Karate DSL)

Este proyecto contiene una solución de automatización de pruebas para la API de [ServeRest](https://serverest.dev/), enfocada en la gestión de usuarios. Se ha utilizado **Karate DSL** debido a su potencia para la validación de esquemas JSON y su facilidad para el manejo de datos dinámicos.

## 📋 Requisitos de Evaluación Cubiertos
- **Operaciones CRUD:** Implementación completa para los endpoints de Usuarios.
- **Validación de Esquemas:** Uso de Fuzzy Matchers para asegurar contratos de API.
- **Datos Dinámicos:** Implementación de Helpers en JavaScript para evitar colisiones de datos.
- **Escenarios Negativos:** Cobertura de errores 400 y 405.

## 🛠️ Requisitos Previos
* **Java JDK:** 11 o superior.
* **Maven:** 3.6+ (para ejecución por línea de comandos).
* **IDE:** IntelliJ IDEA (con el plugin "Karate" instalado).

## 🚀 Configuración y Ejecución

1. **Clonar el repositorio:**
   ```bash
   git clone [https://github.com/tu-usuario/nombre-repo.git](https://github.com/tu-usuario/nombre-repo.git)
   cd nombre-repo

2. **Ejecutar todos los tests:**
   ```bash
   mvn clean test

## 📊 Ver Reportes
Tras la ejecución, abre el reporte detallado en tu navegador para analizar los resultados:
`target/karate-reports/karate-summary.html`

## 📁 Estructura del Proyecto
El proyecto está organizado siguiendo los estándares de legibilidad y mantenimiento de Karate DSL:

* **`src/test/java/examples/`**: Contiene la lógica de las pruebas dividida por enfoques metodológicos:
    * **`users`**: Incluye pruebas donde los *requests* y *responses* están definidos dentro del mismo archivo `.feature`. Se mantuvo de esta forma para evidenciar la diferencia entre prácticas básicas y el uso de variables "en duro" frente a métodos más avanzados.
    * **`usersExternalFile`**: Implementa la lectura de datos desde archivos externos (`.json`). Se utiliza para demostrar buenas prácticas de automatización, evitando el código acoplado y permitiendo una mayor reutilización de componentes.
    * **`escenariosNegativos`**: Utiliza el patrón `Scenario Outline` para validar múltiples casos de error de manera eficiente. Es la forma óptima de probar diversas condiciones negativas con el mínimo de repetición de código.
* **`src/test/java/requests/`**: Almacena las plantillas JSON que representan el cuerpo (payload) de las peticiones a la API.
* **`src/test/java/responses/`**: Contiene los esquemas JSON utilizados para la validación estricta de contratos y respuestas esperadas.
* **`user-utils.js`**: Helper desarrollado en JavaScript para la generación de datos aleatorios, como nombres y emails únicos con UUID, asegurando la independencia de cada test.
* **`karate-config.js`**: Archivo de configuración global donde se definen variables de entorno y la `baseUrl` del proyecto.

## 🧠 Estrategia de Automatización e Informe
Este informe detalla la estrategia técnica y los patrones de diseño aplicados para dar cumplimiento a los requerimientos del **Reto de Automatización QA-BackEnd**.

### 1. Estrategia de Pruebas
La estrategia se centró en la validación del ciclo de vida completo de la Historia de Usuario: *"Gestionar los usuarios a través de la API"*. Se implementó una suite funcional que cubre el 100% de las operaciones CRUD especificadas:

* **Validación de Contratos:** Se integraron validaciones de esquemas JSON para asegurar que las respuestas de la API cumplan con la estructura y tipos de datos definidos, garantizando la estabilidad del sistema ante cambios en el backend.
* **Cobertura de Escenarios:** Se aplicó un enfoque de pruebas de borde, incluyendo tanto casos positivos (flujos ideales) como negativos (errores controlados como 400, 404 o 405) para verificar la resiliencia de la API.

### 2. Patrones de Diseño y Buenas Prácticas
* **Data-Driven Testing (DDT):** Uso del patrón de pruebas guiadas por datos mediante `Scenario Outline`. Esto permite ejecutar múltiples variaciones de una prueba con diferentes entradas y resultados esperados, optimizando la legibilidad y mantenimiento del código.
* **Desacoplamiento de Datos (External Files):** Se separaron los cuerpos de las peticiones (archivos `.json` en `/requests`) de la lógica de los tests (archivos `.feature`), facilitando la reutilización de componentes.
* **Generación de Datos Dinámicos (Helper Pattern):** Desarrollo de la utilidad `user-utils.js` para generar datos aleatorios y únicos (como correos con UUID). Esto garantiza que cada ejecución sea independiente y evita fallos por datos duplicados.
* **Modularización del Proyecto:** El proyecto sigue una estructura clara dividiendo los archivos por función: `features` para la lógica, `requests` para los datos de entrada y `responses` para los esquemas de validación.

### 3. Herramientas y Frameworks
* **Karate DSL:** Herramienta principal elegida por su capacidad nativa para manejar JSON y realizar aserciones de forma declarativa y sencilla.
* **Maven:** Utilizado como gestor de dependencias y motor de ejecución para facilitar la ejecución de pruebas y la integración en flujos de CI/CD.
