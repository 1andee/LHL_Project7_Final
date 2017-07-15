class Project < ApplicationRecord

  has_one :completion_status
  has_many :goals
  has_many :comments
  has_one :rating
  has_many :skills
  belongs_to :user

end
