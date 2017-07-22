class FeedsController < ApplicationController


  def create
     # comments from post
    comment = params[:post]

    user = User.find(current_user.id)

     user.all_projects.each do |project |
        puts "-------------------"
        puts project.id
        puts "-------------------"

        @post = Feed.new(user_id: current_user.id, project_id: project.id, message: "<p> [New General Post] User #{user.name} said #{comment}.</p>")

        if @post.save!
          puts "Post created!"
        else
           puts "Post failed!"
        end
      end
      redirect_to root_path
  end
end
