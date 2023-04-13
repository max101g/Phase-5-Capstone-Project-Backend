class CreateAdmins < ActiveRecord::Migration[7.0]
  def change
    create_table :admins, id: :string do |t|
      t.string :code
      t.string :full_name
      t.string :email

      t.timestamps
    end
    add_index :admins, :code, unique: true
  end
end
