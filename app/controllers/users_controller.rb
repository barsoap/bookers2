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
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new
  end


  # 投稿データのストロングパラメータ
  private
  def user_params
    params.require(:user).permit(:name, :intro)
  end

end
