Feature: Listar usuarios

  Background:
    * url baseUrl

  Scenario Outline:Listar un nuevo usuario <description>

    * def listarUsuarioFailedResponse = read('classpath:responses/listarUsuarioFailedResponse.json')

    Given path <endpoint>
    When method GET
    Then status <statusCode>
    And match response == listarUsuarioFailedResponse
    Examples:
      | endpoint    | statusCode | description               |
      | 'usuarios1' | 405        | Endpoint Incorrecto       |
      | 'u'         | 405        | Endpoint Inexistente      |
      | 123456      | 405        | Endpoint con puros numero |

