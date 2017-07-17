class User < ApplicationRecord

  has_many :skills
  has_one :rating
  has_many :projects
  has_many :comments

  has_secure_password

  validates_presence_of :name, :email
  validates :email, uniqueness: true, :email_format => { :message => 'is invalid' }

end
