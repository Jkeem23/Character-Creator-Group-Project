require 'rails_helper.rb'

feature "player adds a character" do
    scenario "player navigates from the index page to the new character page" do
      visit characters_path
      click_link "New character"
      expect(page).to have_content("RPG Character Maker")
      expect(page).to have_field("Name")
      expect(page).to have_field("Race")
      expect(page).to have_field("Roletype")
      expect(page).to have_field("Backstory")
      expect(page).to have_field("Strength")
      expect(page).to have_field("Perception")
      expect(page).to have_field("Endurance")
      expect(page).to have_field("Charisma")
      expect(page).to have_field("Intelligence")
      expect(page).to have_field("Agility")
      expect(page).to have_field("Luck")
  end
  
  scenario "player adds a new character" do
      visit new_character_path
      expect(page).to have_content("RPG Character Maker")
      fill_in "Name", with: "CHARACTER RSPEC TEST"
      fill_in "Race", with: "HUMAN"
      fill_in "Roletype", with: "CLERIC"
      fill_in "Backstory", with: "BORN IN VILLAGE."
      fill_in "Strength", with: "4"
      fill_in "Perception", with: "5"
      fill_in "Endurance", with: "6"
      fill_in "Charisma", with: "7"
      fill_in "Intelligence", with: "8"
      fill_in "Agility", with: "9"
      fill_in "Luck", with: "10"
      click_button "Create Character"
      expect(page).to have_content("CHARACTER RSPEC TEST")
      expect(page).to have_content("HUMAN")
      expect(page).to have_content("CLERIC")
      expect(page).to have_content("BORN IN VILLAGE.")
      expect(page).to have_content("4")
      expect(page).to have_content("5")
      expect(page).to have_content("6")
      expect(page).to have_content("7")
      expect(page).to have_content("8")
      expect(page).to have_content("9")
      expect(page).to have_content("10")
  end
  
end
