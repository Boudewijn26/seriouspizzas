# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class PizzasChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'pizzas'
  end
end
