class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts, id: :string do |t|
      t.string :code
      t.string :title
      t.string :media
      t.string :description
      t.integer :likes
      t.string :user_code

      t.timestamps
    end
    add_index :posts, :code, unique: true
  end
end
