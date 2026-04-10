Feature: Editar usuario

  Scenario:Editar usuario por ID
    Given url baseUrl
    And path 'usuarios'
    And request {"nome": "Fulano da Silva","email": "fulano@qa1.com","password": "teste","administrador": "true"}
    And method post
    And status 201
    And def usuarioId = $._id
    When url baseUrl
    And path 'usuarios', usuarioId
    And request {"nome": "Fulano Olivera","email": "fulano@qa2.com","password": "teste","administrador": "true"}
    And method PUT
    Then status 200
    And match response == {"message": "Registro alterado com sucesso"}