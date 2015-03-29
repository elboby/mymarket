class AddFields < ActiveRecord::Migration
  def change
    add_column :providers, :name, :string
  end
end
