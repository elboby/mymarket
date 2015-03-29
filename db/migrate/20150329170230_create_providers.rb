class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :owner
      t.text :body
      t.references :region, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
