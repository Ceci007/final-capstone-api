class AddSymptonAndMedicineToTrackings < ActiveRecord::Migration[6.0]
  def change
    add_column :trackings, :medicines, :string, array: true, default: []
    add_column :trackings, :symptons, :string, array: true, default: []
  end
end
