class PizzaOrdersController < ApplicationController
  before_action :set_pizza_order, only: [:show, :update, :destroy]

  # GET /pizza-orders
  # GET /pizza-orders.json
  def index
    @pizza_orders = PizzaOrder.all
    render json: @pizza_orders
  end

  # GET /pizza-orders/1
  # GET /pizza-orders/1.json
  def show
    @pizza_order = PizzaOrder.find(1)
    render json: @pizza_order
  end

  # POST /pizza-orders
  # POST /pizza-orders.json
  def create
    @pizza_order = PizzaOrder.new(pizza_order_params)

    if @pizza_order.save
      render json: @pizza_order
    else
      render json: @pizza_order.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pizza-orders/1
  # PATCH/PUT /pizza-orders/1.json
  def update
    if @pizza_order.update(pizza_order_params)
      render json: @pizza_order
    else
      render json: @pizza_order.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pizza-orders/1
  # DELETE /pizza-orders/1.json
  def destroy
    @pizza_order.destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_pizza_order
    @pizza_order = PizzaOrder.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def pizza_order_params
    ActiveModelSerializers::Deserialization.jsonapi_parse(params)
  end
end
