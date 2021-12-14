class HomeController < ApplicationController

before_action :authenticate_user!

  def index
    @posts = Post.all
  end

  def profile
  end
  
end
