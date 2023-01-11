Feature: Testing Reqres API ALTA QE8
  @Latihan
  Scenario Outline: Get list users with valid parameter page reqres API
    Given Get list user with page <page>
    When Send request get list user
    Then Should return status code 200
    And Response body page should be <page>
  Examples:
    |page|
    |1   |
    |2   |

  @Latihan
  Scenario: Post create new user with valid json
    Given Post create user with valid json
    When Send request post create user
    Then Should return status code 201
    And Response body name should be "Dona Putra Por" and job "QA Engineer"