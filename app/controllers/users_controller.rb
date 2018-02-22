class UsersController < ApplicationController
  def index
    @clients = User.all
  end

  def show
    @clients = User.all
  end

  def update
    if current_user.update_attributes(client_params)
      flash[:notice] = "Client information was updated."
      redirect_to current_user
    else
      flash[:error] = "An error occured. Please try again."
      redirect_to edit_user_registration_path
    end
  end

  private
  def client_params
    params.require(:user).permit(:client_name, :email)
  end
end
