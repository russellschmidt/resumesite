class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])
  end


  def new
    @user = User.new
  end

  def create
  	@user = User.new(params[:user])

    if @user.save
      redirect_to @user, notice: "Another noob is made."
    else
      flash[:notice] = "Enter the user again, please."
      render action: :new
    end
  end


  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:notice] = "Successful update is successful."
      redirect_to @user
    else
      flash[:notice] = "Problem with your update; try again please."
      render action: :edit
    end
  end

end
