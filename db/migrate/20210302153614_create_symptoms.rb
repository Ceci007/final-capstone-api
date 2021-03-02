class CreateSymptoms < ActiveRecord::Migration[6.0]
  def change
    create_table :symptoms do |t|
      t.references :tracking, null: false, foreign_key: true
      t.string :name
      t.integer :intensity

      t.timestamps
    end
  end
end
