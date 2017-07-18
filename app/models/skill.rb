class Skill < ApplicationRecord

  # defining has many relationships between users using through table
  has_many :skill_users
  has_many :users, through: :skill_users

  # defining has many relationships between pojects using through table
  has_many :project_skills
  has_many :projects, through: :project_skills

end
