Feature: Testing ajax calls

@javascript
Scenario: Post Test Success
  Given a post exists with body "Ben is great"
  And I view that post
  Then show me the page
  And I follow "Test"
  Then show me the page
  Then I should see "OK"

@javascript
Scenario: Post Test Failure
  Given a post exists with body "Ben is not great"
  And I view that post
  Then show me the page
  And I follow "Test"
  Then I should see "Nope!"

