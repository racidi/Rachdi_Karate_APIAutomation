Feature: Delete user

  Background: Environment
    Given url baseURL
    And print "Awal Test Delete Request"
    * def header = { Accept: "application/json"}
    * def username = "RachdiF"

  @delete @test
  Scenario: User delete user existing
    When path '/user/' +username
    And method delete
    And headers header
    Then status 200
    And print response
    And assert response.message == "RachdiF"