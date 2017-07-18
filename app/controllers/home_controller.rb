class HomeController < ApplicationController
  def index
    @users = User.search_by_name(params[:query])
  end
end
