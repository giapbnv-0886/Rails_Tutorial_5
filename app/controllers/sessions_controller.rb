class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by email: params[:session][:email].downcase
    if user&.authenticate(params[:session][:password])
      log_in user
      redirect_to current_user
    else
      flash[:danger] = I18n.t "sessions.alert.danger"
      render :new
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end
end