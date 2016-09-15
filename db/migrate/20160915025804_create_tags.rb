class CreateTags < ActiveRecord::Migration[5.0]
  def change
    create_table :tags do |t|
      t.string :name, index: true
      t.datetime :deleted_at, index: true

      t.timestamps
    end
  end
end
