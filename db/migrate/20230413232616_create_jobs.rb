class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :code
      t.string :job_name
      t.string :employer_code
      t.string :jobtag_code

      t.timestamps
    end
  end
end
