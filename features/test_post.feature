Feature: Testing ajax calls

@javascript @test
Scenario: Post Test Success
  Given a post exists with body "Ben is great"
  And I view that post
  And I follow "Test"
  Then I should see "OK" within "span"

@javascript
Scenario: Post Test Failure
  Given a post exists with body "Ben is not great"
  And I view that post
  And I follow "Test"
  Then I should see "Nope!"

