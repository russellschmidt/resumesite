class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.string :user_id
      t.string :integer
      t.string :filename
      t.string :string
      t.string :school_id
      t.string :integer
      t.string :job_id
      t.string :integer
      t.string :contact_id
      t.string :integer
      t.string :goal_description
      t.string :string
      t.string :goal_position
      t.string :string

      t.timestamps
    end
  end
end
