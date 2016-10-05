class PizzasController < ApplicationController
  before_action :set_pizza, only: [:show, :update, :destroy]

  # GET /pizzas
  # GET /pizzas.json
  def index
    @pizzas = Pizza.all
  end

  # GET /pizzas/1
  # GET /pizzas/1.json
  def show
  end

  # POST /pizzas
  # POST /pizzas.json
  def create
    @pizza = Pizza.new(pizza_params)
    if @pizza.save
      render :show, status: :created, location: @pizza
    else
      render json: @pizza.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pizzas/1
  # PATCH/PUT /pizzas/1.json
  def update
    if @pizza.update(pizza_params)
      render :show, status: :ok, location: @pizza
    else
      render json: @pizza.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pizzas/1
  # DELETE /pizzas/1.json
  def destroy
    @pizza.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pizza
      @pizza = Pizza.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pizza_params
      params.require(:pizza).permit(:name, :price, :description)
    end
end
