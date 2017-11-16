class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :image
      t.text :body
      t.integer :views

      t.timestamps
    end
  end
end
