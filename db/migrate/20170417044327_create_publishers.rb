class CreatePublishers < ActiveRecord::Migration[5.0]
  def change
    create_table :publishers do |t|
      t.string :name, limit: 30

      t.timestamps
    end
    add_index :publishers, :name, unique: true
  end
end
