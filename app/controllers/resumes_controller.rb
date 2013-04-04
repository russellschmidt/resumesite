class ResumesController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @resume = @user.Resume.all
  end

  def show
    @user = User.find(params[:user_id])
    @resume = @user.Resume.find(params[:id])
  end


  def edit

  end

  def update
  
  end


  def new
    @user = User.find(params[:user_id])
    @resume = @user.Resume.build
  end

  def create
    @user = User.find(params[:user_id])
    @resume = @user.Resume.build(params[:resume])

    if @resume.save
      redirect_to @user
    else
      render action: :new
    end
  end

end
