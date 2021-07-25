class SessionsController < ApplicationController
  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'See you later, we hope to see you again soon.'
  end

  def create
    user = User.find_by(name: params[:name])
    if user.name == params[:name] && user
      session[:user_id] = user.id
      redirect_to root_path, flash: { notice: "Hi #{user.name}" }
    else
      flash.now[:alert] = 'The user does not exist, if you wish, you can create a session in the REGISTER link.'
      render :new
    end
  end

  def new
    @categories = Category.all
  end
end
