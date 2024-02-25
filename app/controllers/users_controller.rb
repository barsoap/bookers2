class UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "You have updated user successfully."
      redirect_to user_path(@user.id)
    else
      @user = User.find(params[:id])
      render :show
    end
  end

  def index
    @user = current_user
    @book = Book.new
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = Book.where(user_id: params[:user_id])
    # Book.where(user_id: params[:user_id])
  end


  # 投稿データのストロングパラメータ
  private
  def user_params
    params.require(:user).permit(:name, :intro, :profile_image)
  end

end
