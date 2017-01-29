class CreateOfficeGyotais < ActiveRecord::Migration
  def change
    create_table :office_gyotais do |t|
      t.references :office, index: true, foreign_key: true
      t.references :gyotai, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
