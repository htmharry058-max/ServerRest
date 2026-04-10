Feature: Buscar usuario external file

  Background:
    * url baseUrl
    * path 'usuarios'
    * def utils = call read('classpath:requests/user-utils.js')
    * def dName = utils.randomName()
    * def dEmail = utils.randomEmail()

  Scenario:Buscar usuario
    * def registrarUsuarioRequest = read('classpath:requests/registrarUsuario.json')

    * set registrarUsuarioRequest.nome = dName
    * set registrarUsuarioRequest.email = dEmail

    * def buscarUsuarioResponse = read('classpath:responses/buscarUsuarioResponse.json')

    Given request registrarUsuarioRequest
    And method post
    And status 201
    And def usuarioId = $._id
    When url baseUrl
    And path 'usuarios', usuarioId
    And method get
    Then status 200
    And match response == buscarUsuarioResponse
    And match $._id == usuarioId