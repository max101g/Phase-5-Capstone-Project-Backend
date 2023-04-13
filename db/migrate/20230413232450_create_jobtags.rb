class CreateJobtags < ActiveRecord::Migration[7.0]
  def change
    create_table :jobtags do |t|
      t.string :code
      t.string :group_name

      t.timestamps
    end
  end
end
