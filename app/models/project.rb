class Project < ApplicationRecord

  has_one :completion_status
  has_many :goals
  has_many :comments
  has_one :rating
  has_many :skills

  # adds association to alias of mentee_id and mentor_id
  belongs_to :mentee, :class_name => 'User'
  belongs_to :mentor, :class_name => 'User'
end
