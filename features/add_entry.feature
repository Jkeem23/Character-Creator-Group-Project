Feature: Add a new character to list
  
  As a rpg player
  So I can save my created characters in a list
  I want to be able to add a new character entry
  
  
Scenario: As a rpg player I want to be able to navigate from the homepage to the new character page
  Given I am on the home page
  When I click on the "My Characters" link
  Then I should be on the "Created Characters" page
  When I click on the "New character" link
  Then I should be on the "RPG Character Maker" page
  And I should see the "Name" field
  And I should see the "Race" field
  And I should see the "Roletype" field
  And I should see the "Backstory" field
  And I should see the "Strength" field
  And I should see the "Perception" field
  And I should see the "Endurance" field
  And I should see the "Charisma" field
  And I should see the "Intelligence" field
  And I should see the "Agility" field
  And I should see the "Luck" field