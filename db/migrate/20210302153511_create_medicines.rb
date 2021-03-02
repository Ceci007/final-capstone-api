class CreateMedicines < ActiveRecord::Migration[6.0]
  def change
    create_table :medicines do |t|
      t.references :tracking, null: false, foreign_key: true
      t.string :name
      t.float :quantity

      t.timestamps
    end
  end
end
