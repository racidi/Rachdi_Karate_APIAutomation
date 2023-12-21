Feature: Update User

  Background: User Update user Existing
    Given url baseURL
    And print "Awal Update Request"
    * def body = {"id": 180596, "username": "UpdateRachdiF","firstName": "UpdateRachdi","lastName": "UpdateFarisma","email": "rachdif@gmail.com","password": "P@ssw0rd","phone": "02184972642","userStatus": 0}
    * def header = { Accept: "application/json"}
    * def username = "RachdiF"

  @update @test
  Scenario:
    When path '/user/' +username
    And headers header
    And request body
    And method put
    Then status 200
    And print response
    And assert response.code == "200"