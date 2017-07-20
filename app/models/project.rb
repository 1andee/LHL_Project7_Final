class Project < ApplicationRecord

  has_one :completion_status
  has_many :goals
  has_many :comments
  has_one :rating

  # defining has many relationships between skills using through table
  has_many :project_skills
  has_many :skills, through: :project_skills

  # adds association to alias of mentee_id and mentor_id
  belongs_to :mentee, :class_name => 'User', optional: true
  belongs_to :mentor, :class_name => 'User', optional: true
end
