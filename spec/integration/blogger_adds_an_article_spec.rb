require 'rails_helper.rb'

feature "player adds a character" do
  
  scenario "As a user i want to be able to submit my character to the website" do
      visit new_character_path
      expect(page).to have_content("RPG Character Maker")
      fill_in "Name", with: "CHARACTER RSPEC TEST"
      fill_in "Race", with: "TEST"
      fill_in "Roletype", with: "TEST"
      fill_in "Backstory", with: "TEST."
      click_button "Create Character"
  end
  
  scenario "as a user i want to be create a character with relevant stats" do
      visit new_character_path
      expect(page).to have_content("RPG Character Maker")
      fill_in "Name", with: "JIMO"
      fill_in "Race", with: "LION"
      fill_in "Roletype", with: "WARRIOR"
      fill_in "Backstory", with: "BORN IN TAKO YAKI."
      fill_in "Strength", with: "10"
      fill_in "Perception", with: "10"
      fill_in "Endurance", with: "5"
      fill_in "Charisma", with: "1"
      fill_in "Intelligence", with: "3"
      fill_in "Agility", with: "8"
      fill_in "Luck", with: "1"
      click_button "Create Character"
      expect(page).to have_content("JIMO")
      expect(page).to have_content("LION")
      expect(page).to have_content("WARRIOR")
      expect(page).to have_content("BORN IN TAKO YAKI.")
      expect(page).to have_content("10")
      expect(page).to have_content("10")
      expect(page).to have_content("5")
      expect(page).to have_content("1")
      expect(page).to have_content("3")
      expect(page).to have_content("8")
      expect(page).to have_content("1")
  end
  
end

feature "Player edits a character" do
  scenario "As a user I want to be able to edit my character" do
    visit characters_path
    expect(page).to have_content("JIMO")
    click_button "Edit"
  end
end