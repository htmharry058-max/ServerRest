Feature: Listar usuarios

  Scenario:Registrar un nuevo usuario

    * def listarUsuarioResponse = read('classpath:responses/listarUsuarioResponse.json')

    Given url baseUrl
    And path 'usuarios'
    When method GET
    Then status 200
    And match response == listarUsuarioResponse