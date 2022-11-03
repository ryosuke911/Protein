class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.text :name
      t.integer :protein
      t.integer :price
      t.text :memo

      t.timestamps
    end
  end
end
