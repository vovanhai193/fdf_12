class CreateTagProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :tag_products do |t|
      t.references :tag, foreign_key: true
      t.references :product, foreign_key: true
      t.datetime :deleted_at, index: true

      t.timestamps
    end
    add_index :tag_products, [:tag_id, :product_id]
  end
end
