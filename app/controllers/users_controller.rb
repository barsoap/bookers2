class UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])
    if @user != current_user
      redirect_to user_path(current_user.id)
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "You have updated user successfully."
      redirect_to user_path(@user.id)
    else
      # @user = User.find(params[:id]) 定義しなおしたらバリデーションエラーが表示されなくなるので不要
      render :edit
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
    @books = @user.books
    # Book.where(user_id: params[:user_id])
  end


  # 投稿データのストロングパラメータ
  private
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end

end
