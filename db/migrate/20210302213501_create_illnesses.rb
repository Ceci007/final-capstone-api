class CreateIllnesses < ActiveRecord::Migration[6.0]
  def change
    create_table :illnesses do |t|
      t.references :user, null: false, foreign_key: true
      t.string :description
      t.string :name

      t.timestamps
    end
  end
end
