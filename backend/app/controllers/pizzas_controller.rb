class PizzasController < ApplicationController
  before_action :set_pizza, only: [:show, :update, :destroy]

  # GET /pizzas
  # GET /pizzas.json
  def index
    @pizzas = Pizza.all
    render json: @pizzas
  end

  # GET /pizzas/1
  # GET /pizzas/1.json
  def show
    render json: @pizza
  end

  # POST /pizzas
  # POST /pizzas.json
  def create
    @pizza = Pizza.new(pizza_params)
    if @pizza.save
      ActionCable.server.broadcast 'pizzas', {}
      render json: @pizza
    else
      render json: @pizza.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pizzas/1
  # PATCH/PUT /pizzas/1.json
  def update
    if @pizza.update(pizza_params)
      ActionCable.server.broadcast 'pizzas', {}
      render json: @pizza
    else
      render json: @pizza.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pizzas/1
  # DELETE /pizzas/1.json
  def destroy
    @pizza.destroy
    ActionCable.server.broadcast 'pizzas', {}
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pizza
      @pizza = Pizza.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pizza_params
      res = ActiveModelSerializers::Deserialization.jsonapi_parse(params)
    end
end
