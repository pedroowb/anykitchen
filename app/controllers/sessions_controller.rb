class SessionsController < ApplicationController
  def new
  end

  def create
    session[:admin] = true
    redirect_to dishes_path, notice: "Login realizado com sucesso!"
  end

  def destroy
    session[:admin] = nil
    redirect_to root_path, notice: "Logout realizado com sucesso!"
  end

end
