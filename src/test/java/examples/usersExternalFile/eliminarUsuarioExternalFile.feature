Feature: Eliminar usuario external file

  Background:
    * url baseUrl
    * path 'usuarios'
    * def utils = call read('classpath:requests/user-utils.js')
    * def dName = utils.randomName()
    * def dEmail = utils.randomEmail()

  Scenario:Eliminar usuario
    * def registrarUsuarioRequest = read('classpath:requests/registrarUsuario.json')

    * set registrarUsuarioRequest.nome = dName
    * set registrarUsuarioRequest.email = dEmail

    * def eliminarUsuarioResponse = read('classpath:responses/eliminarUsuarioResponse.json')

    Given request registrarUsuarioRequest
    When method POST
    Then status 201
    And def usuarioId = $._id
    When url baseUrl
    And path 'usuarios', usuarioId
    And method DELETE
    Then status 200
    And match response == eliminarUsuarioResponse