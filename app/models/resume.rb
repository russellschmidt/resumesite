class Resume < ActiveRecord::Base
  attr_accessible :contact_id, :filename, :goal_description, :goal_position, :integer, :integer, :integer, :integer, :job_id, :school_id, :string, :string, :string, :user_id

  belongs_to :user
end
