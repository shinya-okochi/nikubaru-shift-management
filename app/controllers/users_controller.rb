class UsersController < ApplicationController
  
  before_action :authenticate_user!
  
  def show
    @user = User.find(1)
    # @shifts = @user.shifts
    @news = News.all
  end
  
  
end
