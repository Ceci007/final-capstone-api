class ChangePrimaryKeyToBigIntOnMedicines < ActiveRecord::Migration[6.0]
  def change
    change_column :medicines, :id, :bigint, unique: true, null: false, auto_increment: true
  end
end
