Feature: Login

  Background: Environment
    Given url baseURL
    And print "Awal Login Request"
    * def body = { "username": "RachdiF", "password": "P@ssword"}
    * def header = { Accept: "application/json"}

  Scenario: user Login Valid username and Valid password
    When path '/user/login'
    And method get
    And headers header
    And request body
    Then status 200
    And print response
    And assert response.code == "200"