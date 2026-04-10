Feature: Listar usuarios

  Scenario:Registrar un nuevo usuario

    Given url baseUrl
    And path 'usuarios'
    When method GET
    Then status 200
    And match $.quantidade == '#number'
