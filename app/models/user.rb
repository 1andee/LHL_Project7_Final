class User < ApplicationRecord

  # defining has many relationships between skills using through table
  has_many :skill_users
  has_many  :skills, through: :skill_users
  has_many :comments

  # resource pointing to all ratings user received or given
  #  (call using User.received_ratings or User.given_ratings)
  has_many :received_ratings, :class_name => 'Rating', :foreign_key => 'receiver_id'
  has_many :given_ratings, :class_name => 'Rating', :foreign_key => 'giver_id'

  # resource pointing to all projects where user is either or given
  #  (call using User.mentor_projects or User.mentee_projects)
  has_many :mentor_projects, :class_name => 'Project', :foreign_key => 'mentor_id'
  has_many :mentee_projects, :class_name => 'Project', :foreign_key => 'mentee_id'


  has_secure_password

  validates_presence_of :name, :email
  validates :email, uniqueness: true, :email_format => { :message => 'is invalid' }

  # returns all projects for user where user is mentor and mentee
  def all_projects
    Project.where("mentee_id = ? OR mentor_id = ?", self.id, self.id)
  end

  # def self.search_by_name(query)
  #   puts "name!!!"
  #   if query
  #     User.where("name LIKE ?", "%#{query}%")
  #   else
  #     User.all
  #   end
  # end

  def self.search_by_skill(query)
    puts "skills!!!"
    if !query.blank?
      skill_ids = Skill.where("lower(skill_name) LIKE ?", "%#{query.downcase}%").pluck(:id)
      user_ids = SkillUser.where(skill_id: skill_ids, mentor: true).pluck(:user_id)
      return User.where(id: user_ids)
    else
      user_ids = SkillUser.where(mentor: true).distinct.pluck(:user_id)
      return User.where(id: user_ids)
    end
  end

end
