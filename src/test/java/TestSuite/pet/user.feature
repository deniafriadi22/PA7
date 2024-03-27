Feature: User Module

  Background:
    Given url "https://petstore.swagger.io/v2"
    And print "--Connect petstore API--"


  Scenario: Creates list of users with given input array
    * def header =
  """
  {
  "accept": "application/json",
  "Content-Type": "application/json"
  }
  """
    * def body =
    """
    [
        {
            "id": 150515,
            "username": "deni",
            "firstName": "deni",
            "lastName": "a",
            "email": "deniaGmail.com",
            "password": "deniaja",
            "phone": "080808",
            "userStatus": 1
        }
    ]
    """
    When url "https://petstore.swagger.io/v2/user/createWithList"
    And request header
    And request body
    When method post
    Then print response
    And status 200

  Scenario: Get user by user name
    When url "https://petstore.swagger.io/v2/user/deni"
    When method get
    Then print response
    And status 200

  Scenario: Updated user
    * def header =
  """
  {
  "accept": "application/json",
  "Content-Type": "application/json"
  }
  """
    * def body =
    """
    {
  "id": 0,
  "username": "string",
  "firstName": "string",
  "lastName": "string",
  "email": "string",
  "password": "string",
  "phone": "string",
  "userStatus": 0
    }
    """
    When url "https://petstore.swagger.io/v2/user/denny"
    And request header
    And request body
    When method put
    Then print response
    And status 200

  Scenario: Logs user into the system
    When url "https://petstore.swagger.io/v2/user/login"
    And params {username:denny}
    And params {password:080808}
    When method get
    Then print response
    And status 200

  Scenario: Logs out current logged in user session
    When url "https://petstore.swagger.io/v2/user/logout"
    When method get
    Then print response
    And status 200

  Scenario: Delete user
    * def header =
    """
    {
        "accept": "application/json"
    }
    """
    When url "https://petstore.swagger.io/v2/user/deni"
    And request header
    When method delete
    Then print response
    And status 200

  Scenario: Creates list of users with given input array
    * def header =
    """
    {
        "accept": "application/json",
        "Content-Type": "application/json"
    }
    """
    * def body =
    """
    [
        {
            "id": 150515,
            "username": "deni",
            "firstName": "deni",
            "lastName": "a",
            "email": "deniaGmail.com",
            "password": "deniaja",
            "phone": "080808",
            "userStatus": 1
        }
    ]
    """
    When url "https://petstore.swagger.io/v2/user/createWithArray"
    And request header
    And request body
    When method post
    Then print response
    And status 200

  Scenario: Create user
    * def header =
    """
    {
        "accept": "application/json",
        "Content-Type": "application/json"
    }
    """
    * def body =
    """
        {
            "id": 111,
            "username": "deni",
            "firstName": "deni",
            "lastName": "a",
            "email": "deniaGmail.com",
            "password": "deniaja",
            "phone": "080808",
            "userStatus": 1
        }
    """
    When url "https://petstore.swagger.io/v2/user"
    And request header
    And request body
    When method post
    Then print response
    And status 200