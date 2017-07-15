class User < ApplicationRecord

  has_many :skills
  has_one :rating
  has_many :projects
  has_many :comments

end
