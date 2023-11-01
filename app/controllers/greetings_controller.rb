class GreetingsController < ApplicationController
  def random_greeting
    @greeting = Message.order("RANDOM()").first
    render json: @greeting
  end
end
