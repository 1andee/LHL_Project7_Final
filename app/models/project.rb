class Project < ApplicationRecord

  has_one :completion_status
  has_many :goals
  has_many :comments
  has_one :rating
  has_many :skills
  belongs_to :mentee, :class_name => 'User' #, :foreign_key => 'mentee_id'
  belongs_to :mentor, :class_name => 'User' #, :foreign_key => 'mentor_id'

end
