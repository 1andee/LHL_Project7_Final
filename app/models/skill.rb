class Skill < ApplicationRecord

  # belongs_to :user
  # belongs_to :project
  has_many :skill_users
  has_many :users, through: :skill_users

  has_many :project_skills
  has_many :projects, through: :project_skills

  # def to_hash
  #   skills = {
  #     name: name
  #   }

  # end


end
