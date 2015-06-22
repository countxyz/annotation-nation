class SessionsController < ApplicationController

  def create
    user = User.find_by_email params[:session][:email].downcase

    respond_to do |format|
      if user && user.authenticate(params[:session][:password])
        signin user
        format.html { redirect_to root_url }
        format.json { head :no_content     }
        format.js
      end
    end
  end

  def destroy
    signout
    redirect_to root_url
  end
end
