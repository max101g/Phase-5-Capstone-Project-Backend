class CreateJobseekerprofiles < ActiveRecord::Migration[7.0]
  def change
    create_table :jobseekerprofiles do |t|
      t.string :full_name
      t.string :email
      t.string :phone_number
      t.boolean :availability
      t.integer :minimum_salary
      t.string :job_categories, array: true, default: []
      t.boolean :verified

      t.timestamps
    end
  end
end
