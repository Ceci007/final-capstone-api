class CreateTrackings < ActiveRecord::Migration[6.0]
  def change
    create_table :trackings do |t|
      t.references :illness, null: false, foreign_key: true
      t.datetime :date
      t.integer :mood
      t.float :temperature

      t.timestamps
    end
  end
end
