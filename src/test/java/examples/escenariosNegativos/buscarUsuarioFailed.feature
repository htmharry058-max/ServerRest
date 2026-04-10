Feature: Buscar usuario

  Scenario Outline:Buscar usuario por ID <description>
    Given url baseUrl
    And path 'usuarios', <usuarioId>
    When method get
    Then status <statusCode>
    Examples:
      | usuarioId          | statusCode | description           |
      | '0uxuPY0cbmQhpEz2' | 400        | No existente          |
      | '123'              | 400        | con longitud corta    |
      | 1234567897412589   | 400        | con formato no String |