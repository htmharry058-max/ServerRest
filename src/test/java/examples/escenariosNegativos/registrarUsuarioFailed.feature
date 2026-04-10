Feature: Registrar usuario

  Scenario Outline:Registrar un nuevo usuario <description>

    Given url baseUrl
    And path 'usuarios'
    And request {"nome": <name>,"email": <email>,"password": <password>,"administrador": <administrador>}
    When method POST
    Then status <statusCode>
    Examples:
      | name              | email                        | password | administrador | statusCode | description                       |
      | ''                | ''                           | ''       | ''            | 400        | Campos Vacios                     |
      | 12345             | 'fulano@qa.com'              | 'teste'  | 'true'        | 400        | Nombre numerico                   |
      | 'Fulano da Silva' | 'fulano@qa.com'              | 'teste'  | 'true'        | 400        | Email Usado                       |
      | 'Fulano da Silva' | 'Fulano da Silva'            | '123456' | 'true'        | 400        | Email no valido                   |
      | 'Fulano da Silva' | 'daniel_anicama@dominio.com' | 123456   | 'true'        | 400        | Password numerico                 |
      | 'Fulano da Silva' | 'daniel_anicama@dominio.com' | '123456' | 'Hola mundo'  | 400        | Administrador con valor no valido |
