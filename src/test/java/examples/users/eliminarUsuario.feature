Feature: Eliminar usuario

  Scenario:Eliminar usuario por ID
    Given url baseUrl
    And path 'usuarios'
    And request {"nome": "Fulano da Silva","email": "fulano@qa4.com","password": "teste","administrador": "true"}
    And method post
    And status 201
    And def usuarioId = $._id
    When url baseUrl
    And path 'usuarios', usuarioId
    And method DELETE
    Then status 200
    And match response == {"message": "Registro excluído com sucesso"}