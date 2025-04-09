class DishesController < ApplicationController
  
  before_action :require_admin, except: [:index, :show]

  def index
    @dishes = Dish.all
  end

  def show
    @dish = Dish.find(params[:id])
  end

  def new
    @dish = Dish.new
  end

  def create
    @dish = Dish.new(dish_params)
    if @dish.save
      redirect_to new_dish_path, notice: "Prato criado com sucesso!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @dish = Dish.find(params[:id])
  end

  def update
    @dish = Dish.find(params[:id])
    if @dish.update(dish_params)
      redirect_to @dish, notice: "Prato atualizado com sucesso!"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @dish = Dish.find(params[:id])
    @dish.destroy
    redirect_to dishes_path, notice: "Prato removido com sucesso!"
  end

  private

  def dish_params
    params.require(:dish).permit(:name, :description, :price, :special, :category_id)
  end

  def require_admin
    unless session[:admin]
      redirect_to login_path, alert: "Você precisa estar logado como admin para acessar essa seção."
    end
  end
end
