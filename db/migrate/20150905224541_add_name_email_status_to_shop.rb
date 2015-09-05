class AddNameEmailStatusToShop < ActiveRecord::Migration
  def change
    add_column :shops, :name, :string
    add_column :shops, :email, :string
    add_column :shops, :region, :integer, default: 0, index: true
  end
end
