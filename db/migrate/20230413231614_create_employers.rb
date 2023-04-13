class CreateEmployers < ActiveRecord::Migration[7.0]
  def change
    create_table :employers do |t|
      t.string :code
      t.string :company_name
      t.string :email
      t.string :location
      t.string :avatar
      t.string :description
      t.boolean :verified

      t.timestamps
    end
  end
end
