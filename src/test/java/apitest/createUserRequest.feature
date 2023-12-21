Feature: Create user

  Background: Environment
    Given url baseURL
    And print "Awal Test Post Request"
    * def body = {"id": 180596, "username": "RachdiF","firstName": "Rachdi","lastName": "Farisma","email": "rachdif@gmail.com","password": "P@ssw0rd","phone": "02184972642","userStatus": 0}
    * def header = { Accept: "application/json"}

  @create @test
  Scenario: User create single user
    When path '/user'
    And headers header
    And request body
    And method post
    Then status 200
    And print response
    And assert response.message == "180596"