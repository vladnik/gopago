Feature: Manage books
  User should be able to
  list/add/edit/destroy book

  Scenario: List books
    When I navigate to books page
    Then I should see a list of books

  Scenario: Add book
    When I navigate to books page
    And click on a "New Book" link
    Then I should be redirected to a New Book page
    When I enter "Cucumber book" into "book_title" field
    And click on a "Create Book" button
    And I navigate to books page
    Then I should see "Cucumber book" book in a list

  Scenario: Edit book
    When I navigate to books page
    And click on a first "Edit" link
    Then I should be redirected to a Edit Book page
    When I enter "Updated Book Title" into "book_title" field
    And click on a "Update Book" button
    And I navigate to books page
    Then I should see "Updated Book Title" book in a list

  Scenario: Destroy book
    When I navigate to books page
    Then I should see "Indian Camp" book in a list
    When I click on a first "Destroy" link
    Then I shouldn't see "Indian Camp" any more
