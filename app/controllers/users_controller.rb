class UsersController < ApplicationController
  def edit
  end

  def index
  end

  def show
    @users = User.find(params[:id])
    @books = @users.books
  end

end
