class NewsController < ApplicationController
  def show
  end
  
  def new
    @news = News.new
  end
  
  def create 
    News.create(news_params)
    redirect_to '/users/show'
  end 
  
  private
  def news_params
    params.require(:news).permit(:username, :text)
  end 
end
