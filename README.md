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

* **`src/test/java/examples/`**: Contiene los archivos `.feature` con la lógica de las pruebas y los escenarios de aceptación.
* **`src/test/java/requests/`**: Plantillas JSON que representan el cuerpo (payload) de las peticiones a la API.
* **`src/test/java/responses/`**: Esquemas JSON utilizados para la validación de contratos y respuestas esperadas.
* **`user-utils.js`**: Helper desarrollado en JavaScript para la generación de datos aleatorios (nombres, emails únicos).
* **`karate-config.js`**: Configuración global del framework, donde se define la `baseUrl` y variables de entorno.

## 🧠 Estrategia de Automatización e Informe
Para cumplir con los criterios de evaluación, se aplicaron los siguientes patrones:

* **Patrón Data-Driven**: Uso intensivo de `Scenario Outline` para validar múltiples códigos de estado y rutas con la mínima repetición de código posible.
* **Desacoplamiento**: Separación clara de los datos (archivos JSON externos) de la lógica del test (Gherkin), lo que facilita enormemente el mantenimiento a largo plazo.
* **Validación de Contratos**: Cada endpoint cuenta con una validación de esquema rigurosa que asegura que la API devuelva los campos obligatorios y los tipos de datos correctos.
* **Independencia de Pruebas**: Cada registro de usuario utiliza emails únicos generados dinámicamente mediante el helper de JavaScript, garantizando que los tests sean repetibles y no dependan de un estado previo de la base de datos.
