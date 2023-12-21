Feature: Get user

  Background: Environment
    Given url baseURL
    And print "Awal Test Get Request"
    * def username = "RachdiF"
    * string jsonSchemaExpected = read('file:src/test/java/apitest/schema/getschema.json')

  @get @test
  Scenario: user Check username
    When path '/user/'+username
    And method get
    Then status 200
    And print response
    And assert response.username == username
    And assert response.email == 'rachdif@gmail.com'
    And match response == '#object'