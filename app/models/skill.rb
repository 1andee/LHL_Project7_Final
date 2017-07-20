class Skill < ApplicationRecord

  # defining has many relationships between users using through table
  has_many :skill_users
  has_many :users, through: :skill_users

  # defining has many relationships between pojects using through table
  has_many :project_skills
  has_many :projects, through: :project_skills

  # validates :skill_name, presence: true
  # validates :skill_name, :uniqueness => {:case_sensitive => false}

  def self.get_user_skills(user_id, mentor)
    skill_ids = SkillUser.where(user_id: user_id, mentor: mentor).pluck(:skill_id)
    skill_names = Skill.where(id: skill_ids)
    return skill_names
  end


end
