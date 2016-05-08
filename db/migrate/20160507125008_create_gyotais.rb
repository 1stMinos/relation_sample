class CreateGyotais < ActiveRecord::Migration
  def change
    create_table :gyotais do |t|
      t.string :name
      t.integer :parent_id
      t.string :parent_name
      t.text :comment

      t.timestamps null: false
    end
  end
end
