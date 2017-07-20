class HomeController < ApplicationController
  def index
    # @users = User.search_by_name(params[:query])
    @users = User.search_by_skill(params[:query])

  end
end
