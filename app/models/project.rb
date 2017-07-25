class Project < ApplicationRecord

  has_many :feeds, -> {order(created_at: :desc)}
  has_one :completion_status
  has_many :goals
  has_many :comments
  has_one :rating

  # defining has many relationships between skills using through table
  has_many :project_skills
  has_many :skills, through: :project_skills

  # adds association to alias of mentee_id and mentor_id
  belongs_to :mentee, :class_name => 'User', optional: true
  belongs_to :mentor, :class_name => 'User', optional: true

  # Adds starring capabilities to projects for two categories
  ratyrate_rateable 'accuracy', 'availability'

  def self.update_mentor_feedback(project_id, feedback, current_user)
    @project = Project.find(project_id)
    @project.update(mentor_feedback: feedback)
    if @project.save!
      mentee_name = User.find(@project.mentee_id).name
      feed_message = "<p>#{current_user.name} has updated the feedback to mentee #{mentee_name} on the following project: <a href='/projects/#{project_id}' class='feed-project-link'>#{@project.name}</a></p>"
      Feed.create(user_id: current_user.id, project_id: project_id, message: feed_message)
      return "success"
    else
      return "fail"
    end
  end

  def self.update_mentee_feedback(project_id, feedback, current_user)
    @project = Project.find(project_id)
    @project.update(mentee_feedback: feedback)
    if @project.save!
      mentor_name = User.find(@project.mentor_id).name
      feed_message = "<p>#{current_user.name} has updated the feedback to mentor #{mentor_name} on the following project: <a href='/projects/#{project_id}' class='feed-project-link'>#{@project.name}</a></p>"
      Feed.create(user_id: current_user.id, project_id: project_id, message: feed_message)
      return "success"
    else
      return "fail"
    end
  end

  def self.mentor_decline(project_id, current_user)
    @project = Project.find(project_id)
    @project.update(mentor_pending: nil, mentor_id: nil)
    if @project.save!
      feed_message = "<p>#{current_user.name} has declined the invitation to be a mentor for the following project: <a href='/projects/#{project_id}' class='feed-project-link'>#{@project.name}</a></p>"
      Feed.create(user_id: current_user.id, project_id: project_id, message: feed_message)
      return "success"
    else
      return "fail"
    end
  end

  def self.mentee_decline(project_id, current_user)
    @project = Project.find(project_id)
    @project.update(mentee_pending: nil, mentee_id: nil)
    if @project.save!
      feed_message = "<p>#{current_user.name} has declined the invitation to be a mentee for the following project: <a href='/projects/#{project_id}' class='feed-project-link'>#{@project.name}</a></p>"
      Feed.create(user_id: current_user.id, project_id: project_id, message: feed_message)
      return "success"
    else
      return "fail"
    end
  end

end
