Feature: Registrar usuario

  Scenario:Registrar un nuevo usuario
    Given url baseUrl
    And path 'usuarios'
    And request {"nome": "Fulano da Silva","email": "dfulano@qa.com","password": "teste","administrador": "true"}
    When method POST
    Then status 201
    And match response == {"message": "Cadastro realizado com sucesso", "_id": #string}