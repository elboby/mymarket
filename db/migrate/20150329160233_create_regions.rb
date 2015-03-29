class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.string :title
      t.text :text

      t.timestamps null: false
    end
  end
end
