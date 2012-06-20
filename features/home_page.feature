Feature: View Home Page
  Scenario: User views home page successfully
    Given I am viewing "/"
    Then I should see "Sinatra MVC"
