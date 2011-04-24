class UsersController < ApplicationController

  before_filter :authenticate_user!
  load_and_authorize_resource

  def show
    @user = User.find(params[:id])
  end
  def index
    @users = User.order_by([:name, :asc])
  end

  def change_role
    user = User.find(params[:id])
    user.role = params[:role]
    user.save

    respond_to do |format|
      format.html { redirect_to(users_url) }
     format.xml  { head :ok }
    end
  end
end