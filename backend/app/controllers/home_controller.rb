class HomeController < ApplicationController
  def index
    render json: { message: "Welcome to Kanji Learning API" }
  end
end
