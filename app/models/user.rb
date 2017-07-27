class User < ApplicationRecord

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  after_create :email_user

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

  # Welcome email on registration
  def email_user
    UserMailer.welcome_email(self).deliver
  end

  # Adds rating power to user model
  ratyrate_rater

  # # Adds starring capabilities to projects for two categories
  # ratyrate_rateable 'accuracy', 'availability'
    #  (call using User.received_ratings or User.given_ratings)
  # has_many :received_ratings, :class_name => 'Rate', :foreign_key => 'receiver_id'
  # has_many :given_ratings,  ratyrate_rater

  validates_presence_of :name, :email
  validates :email, uniqueness: true, :email_format => { :message => 'is invalid' }

  # returns all projects for user where user is mentor and mentee
  def all_projects
    Project.where("mentee_id = ? OR mentor_id = ?", self.id, self.id)
  end


  def self.get_user(user_id)
    return User.find(user_id)
  end


  # def self.search_by_skill(query)
  #   if !query.blank?
  #     # skill_ids = Skill.where("lower(skill_name) LIKE ?", "%#{query.downcase}%").pluck(:id)
  #     skill_ids = Skill.where("skill_name ilike ?", "%#{query}%").pluck(:id)
  #     user_ids = SkillUser.where(skill_id: skill_ids, mentor: true).pluck(:user_id)
  #     return User.where(id: user_ids)
  #   else
  #     user_ids = SkillUser.where(mentor: true).distinct.pluck(:user_id)
  #     return User.where(id: user_ids)
  #   end
  # end

  def self.text_search(query, mentee_id, mentor_id)
    if query.present?

      if mentor_id.present?
        user_ids = User
                  .joins("INNER JOIN skill_users ON skill_users.user_id = users.id")
                  .joins("INNER JOIN skills ON skills.id = skill_users.skill_id")
                  .select("users.*, skill_users.mentor, skills.skill_name")
                  .where("users.name @@ :q or skills.skill_name @@ :q and skill_users.mentor = false", q: query).distinct.pluck(:user_id)
      else
        user_ids = User
                  .joins("INNER JOIN skill_users ON skill_users.user_id = users.id")
                  .joins("INNER JOIN skills ON skills.id = skill_users.skill_id")
                  .select("users.*, skill_users.mentor, skills.skill_name")
                  .where("users.name @@ :q or skills.skill_name @@ :q and skill_users.mentor = true", q: query).distinct.pluck(:user_id)
      end
      return User.where(id: user_ids)
    else
      if mentor_id.present?
        user_ids = SkillUser.where(mentor: false).distinct.pluck(:user_id)
      else
        user_ids = SkillUser.where(mentor: true).distinct.pluck(:user_id)
      end
      return User.where(id: user_ids)
    end
  end

end




# SELECT DISTINCT "user_id" FROM "users" INNER JOIN skill_users ON skill_users.user_id = users.id INNER JOIN skills ON skills.id = skill_users.skill_id WHERE (users.name @@ 'juan html' or skills.skill_name @@ 'juan html')
