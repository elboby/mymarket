class AddCartStatusTotal < ActiveRecord::Migration
  def change
    add_column :carts, :total, :integer
    add_column :carts, :status, :string
  end
end
