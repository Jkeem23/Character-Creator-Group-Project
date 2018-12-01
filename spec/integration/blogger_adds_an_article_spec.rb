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
  
end
