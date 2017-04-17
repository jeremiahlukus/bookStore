class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :isbn, limit: 13
      t.text :description
      t.date :published_at
      t.references :publisher, foreign_key: true
      t.integer :page_count
      t.decimal :price, precision: 16, scale: 2

      t.timestamps
    end
  end
end
