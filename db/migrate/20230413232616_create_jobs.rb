class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs, id: :string do |t|
      t.string :code
      t.string :job_name
      t.string :employer_code
      t.string :jobtag_code

      t.timestamps
    end
    add_index :jobs, :code, unique: true
  end
end
