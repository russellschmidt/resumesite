class ResumesController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @resume = @user.resumes.all
  end

  def show
    @user = User.find(params[:user_id])
    @resume = @user.resumes.find(params[:id])
  end


  def edit

  end

  def update
  
  end


  def new
    @user = User.find(params[:user_id])
    @resume = @user.resumes.build
  end

  def create
    @user = User.find(params[:user_id])
    @resume = @user.resumes.build(params[:resume])

    if @resume.save
      redirect_to @user
    else
      render action: :new
    end
  end

end
