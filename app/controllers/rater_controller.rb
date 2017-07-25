class RaterController < ApplicationController

  def create
    if current_user
      @project = Project.find(params[:id])

      puts "==========YES IT DID======="
      puts @project.name
      puts "==========YES IT DID======="

      obj = params[:klass].classify.constantize.find(params[:id])
      obj.rate params[:score].to_f, current_user, params[:dimension]

      if obj.save!
        puts "==========YES IT DID======="
        puts params[:id]
        puts params[:klass]
        puts params[:score].to_f
        puts params[:dimension]
        puts "==========YES IT DID======="

        if current_user.id == @project.mentor_id
          if params[:dimension] == "availability_mentee"
            Rating.create(project_id: @project.id, giver_id: current_user.id, receiver_id: @project.mentee_id, availability: params[:score].to_f )
          else
            Rating.create(project_id: @project.id, giver_id: current_user.id, receiver_id: @project.mentee_id, accuracy: params[:score].to_f )
          end
        else
          if params[:dimension] == "availability_mentor"
            Rating.create(project_id: @project.id, giver_id: current_user.id, receiver_id: @project.mentor_id, availability: params[:score].to_f )
          else
            Rating.create(project_id: @project.id, giver_id: current_user.id, receiver_id: @project.mentor_id, accuracy: params[:score].to_f )
          end
        end
      end
      render :json => true
    else
      render :json => false
    end
  end
end
