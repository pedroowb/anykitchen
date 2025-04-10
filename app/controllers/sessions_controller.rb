class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:email] == "admin" && params[:password] == "admin@2025"
      session[:admin] = true
      redirect_to dishes_path, notice: "Login realizado com sucesso!"
    else
      flash.now[:alert] = "Credenciais inválidas"
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    session[:admin] = nil
    redirect_to root_path, notice: "Logout realizado com sucesso!"
  end

end
