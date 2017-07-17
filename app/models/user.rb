class User < ApplicationRecord

  has_many :skills
  has_one :rating
  has_many :projects
  has_many :comments

  has_secure_password

  validates_presence_of :name, :email
  validates :email, uniqueness: true, :email_format => { :message => 'is invalid' }

  # def to_hash
  #   output = {
  #     id: id,
  #     avatar: avatar,
  #     name: name,
  #     location: location,
  #     email: email,
  #     linkedin: linkedin_url,
  #     github: github_url,
  #     other_site: other_site,
  #     twitter: twitter,
  #     slack_name: slack_name,
  #     skills: skills.to_hash
  #   }

  # end

  # def to_json
  #   to_hash
  # end

end
