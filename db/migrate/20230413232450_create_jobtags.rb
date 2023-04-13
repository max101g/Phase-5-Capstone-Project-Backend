class CreateJobtags < ActiveRecord::Migration[7.0]
  def change
    create_table :jobtags, id: :string do |t|
      t.string :code
      t.string :group_name

      t.timestamps
    end
    add_index :jobtags, :code, unique: true
  end
end
