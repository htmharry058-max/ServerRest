Feature: Editar usuario external file

  Background:
    * url baseUrl
    * path 'usuarios'
    * def utils = call read('classpath:requests/user-utils.js')
    * def dName = utils.randomName()
    * def dEmail = utils.randomEmail()

  Scenario:Editar usuario
    * def registrarUsuarioRequest = read('classpath:requests/registrarUsuario.json')

    * set registrarUsuarioRequest.nome = dName
    * set registrarUsuarioRequest.email = dEmail

    * def editarUsuarioResponse = read('classpath:responses/editarUsuarioResponse.json')

    Given request registrarUsuarioRequest
    And method post
    And status 201
    And def usuarioId = $._id
    When url baseUrl
    And path 'usuarios', usuarioId
    And request registrarUsuarioRequest
    And method PUT
    Then status 200
    And match response == editarUsuarioResponse