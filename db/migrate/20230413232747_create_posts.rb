class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :code
      t.string :title
      t.string :media
      t.string :description
      t.integer :likes
      t.string :user_code

      t.timestamps
    end
  end
end
