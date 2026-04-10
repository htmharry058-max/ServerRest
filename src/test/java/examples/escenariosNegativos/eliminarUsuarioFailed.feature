Feature: Eliminar usuario

  Scenario Outline:Eliminar usuario por ID <description>
    Given url baseUrl
    And path 'usuarios', <usuarioId>
    And method DELETE
    Then status <statusCode>
    Examples:
      | usuarioId          | statusCode | description           |
      | '0uxuPY0cbmQhpEz2' | 200        | No existente          |
      | '123'              | 200        | con longitud corta    |
      | 1234567897412589   | 200        | con formato no String |