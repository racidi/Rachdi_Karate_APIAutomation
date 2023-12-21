Feature: Logout

  Background: Environment
    Given url baseURL
    And print "Awal Logout Request"

  Scenario: user Logout
    When path '/user/logout'
    And method get
    Then status 200
    And print response
    And assert response.code == "200"