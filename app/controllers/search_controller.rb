class SearchController < ApplicationController

  def index
    puts "trying"
    @q = "%#{params[:query]}%"
    puts "after trying"
    if params[:query]
      puts "enter if"
      @users_query = User.where("name LIKE ?", @q)
    else
      puts "else"
      @users_query = User.all
    end
    puts @users_query.length
  end


end
