class CreateEmployerprofiles < ActiveRecord::Migration[7.0]
  def change
    create_table :employerprofiles do |t|
      t.string :company_name
      t.string :email
      t.string :phone_number
      t.boolean :verified

      t.timestamps
    end
  end
end
