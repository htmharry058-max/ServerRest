Feature: Editar usuario

  Scenario Outline:Editar usuario por ID <description>
    Given url baseUrl
    And path 'usuarios', <usuarioId>
    And request {"nome": <name>,"email": <email>,"password": <password>,"administrador": <administrador>}
    When method PUT
    Then status <statusCode>
    Examples:
      | usuarioId          | name              | email                        | password | administrador | statusCode | description                       |
      | 'i7VcW97tjU4w66LX' | ''                | ''                           | ''       | ''            | 400        | Campos Vacios                     |
      | 'i7VcW97tjU4w66LX' | 12345             | 'fulano@qa.com'              | 'teste'  | 'true'        | 400        | Nombre numerico                   |
      | 'i7VcW97tjU4w66LX' | 'Fulano da Silva' | 'fulano@qa.com'              | 'teste'  | 'true'        | 400        | Email Usado                       |
      | 'i7VcW97tjU4w66LX' | 'Fulano da Silva' | 'Fulano da Silva'            | '123456' | 'true'        | 400        | Email no valido                   |
      | 'i7VcW97tjU4w66LX' | 'Fulano da Silva' | 'daniel_anicama@dominio.com' | 123456   | 'true'        | 400        | Password numerico                 |
      | 'i7VcW97tjU4w66LX' | 'Fulano da Silva' | 'daniel_anicama@dominio.com' | '123456' | 'Hola mundo'  | 400        | Administrador con valor no valido |

