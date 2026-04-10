Feature: Registrar usuario external file

  Background:
    * url baseUrl
    * path 'usuarios'
    * def utils = call read('classpath:requests/user-utils.js')
    * def dName = utils.randomName()
    * def dEmail = utils.randomEmail()

  Scenario:Registrar un nuevo usuario
    * def registrarUsuarioRequest = read('classpath:requests/registrarUsuario.json')

    * set registrarUsuarioRequest.nome = dName
    * set registrarUsuarioRequest.email = dEmail

    * def registrarUsuarioResponse = read('classpath:responses/registrarUsuarioResponse.json')

    Given request registrarUsuarioRequest
    When method POST
    Then status 201
    And match response == registrarUsuarioResponse