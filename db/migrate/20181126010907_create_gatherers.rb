class CreateGatherers < ActiveRecord::Migration[5.2]
  def change
    create_table :gatherers do |t|
      t.string :gatherType
      t.integer :gatherLevel
      t.references :character, foreign_key: true

      t.timestamps
    end
  end
end
