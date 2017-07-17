class Skill < ApplicationRecord

  belongs_to :user
  belongs_to :project

  # def to_hash
  #   skills = {
  #     name: name
  #   }

  # end


end
