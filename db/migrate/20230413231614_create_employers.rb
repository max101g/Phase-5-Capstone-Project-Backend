class CreateEmployers < ActiveRecord::Migration[7.0]
  def change
    create_table :employers, id: :string do |t|
      t.string :code
      t.string :company_name
      t.string :email
      t.string :location
      t.string :avatar
      t.string :description
      t.boolean :verified

      t.timestamps
    end
    add_index :employers, :code, unique: true
  end
end
