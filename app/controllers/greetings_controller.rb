class GreetingsController < ApplicationController
  def index
    greeting = GreetingsService.new

    render json: {greeting: greeting.say}
  end
end
