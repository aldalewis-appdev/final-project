class AddColumnsToPhoto < ActiveRecord::Migration[5.0]
  def change
    add_column :photos, :rent, :decimal
    add_column :photos, :start_date, :date
    add_column :photos, :end_date, :date
  end
end
