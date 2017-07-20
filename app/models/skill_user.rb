class SkillUser < ApplicationRecord

  # defining has many relationships between skills using through table
  belongs_to :user
  belongs_to :skill
end
