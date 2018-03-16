class AddAddressToPhoto < ActiveRecord::Migration[5.0]
  def change
    add_column :photos, :address, :string
  end
end
