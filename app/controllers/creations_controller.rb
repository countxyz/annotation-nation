class CreationsController < ApplicationController
  before_action :set_user, only: :create

  def new
    @creation = Creation.new
  end

  def create
    @creation = @user.creations.new creation_params

    if @creation.save
      redirect_to root_url
    else
      render 'new'
    end
  end

  def show
    @creation = Creation.find params[:id]
  end

  private

  def creation_params
    params.require(:creation).permit :creator, :title, :creation
  end

  def set_user
    @user = current_user
  end
end
