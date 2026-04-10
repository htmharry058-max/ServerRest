Feature: Buscar usuario

  Scenario:Buscar usuario por ID
    Given url baseUrl
    And path 'usuarios'
    And request {"nome": "Fulano da Silva","email": "fulano@qa3.com","password","password": "teste","administrador": "true"}
    And method post
    And status 201
    And def usuarioId = $._id
    When url baseUrl
    And path 'usuarios', usuarioId
    And method get
    Then status 200
    And match response == {"nome": #string,"email": #string,"password": #string,"administrador": #string,"_id": #string}
    And match $._id == usuarioId