class ManagersController < ApplicationController
  def new
      @manager= Manager.new
  end

  def create
     @manager = Manager.create(manager_params)
        @manager.save
        if @manager.save
        flash[:success] = "Successfully Registered!"        
        redirect_to '/manage'
      end
  end

  def edit
  end

  def update
  end

  def show
  end

  def index
  end

private
   def manager_params
    params.require(:manager).permit(:username, :email, :password_digest)

  end
end
