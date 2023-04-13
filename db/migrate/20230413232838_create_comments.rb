class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments, id: :string do |t|
      t.string :code
      t.string :content
      t.string :post_code
      t.string :user_code

      t.timestamps
    end
    add_index :comments, :code, unique: true
  end
end
