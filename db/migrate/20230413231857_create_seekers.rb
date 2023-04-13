class CreateSeekers < ActiveRecord::Migration[7.0]
  def change
    create_table :seekers, id: :string do |t|
      t.string :code
      t.string :full_name
      t.string :email
      t.string :location
      t.string :gender
      t.string :date_of_birth
      t.string :avatar
      t.string :phone_number
      t.string :preferred_job
      t.string :availability
      t.integer :minimum_salary
      t.boolean :verified

      t.timestamps
    end
    add_index :seekers, :code, unique: true
  end
end
