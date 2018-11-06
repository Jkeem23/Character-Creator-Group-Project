class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :race
      t.string :class
      t.text :backstory
      t.integer :strenth
      t.integer :intelligence
      t.integer :luck
      t.integer :enduranc
      t.integer :charisma
      t.integer :perception
      t.integer :agility

      t.timestamps
    end
  end
end
