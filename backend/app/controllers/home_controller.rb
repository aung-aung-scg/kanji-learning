class HomeController < ApplicationController
  def index
    render json: { message: "Welcome to Kanji Learning API" }
  end

  def seed
    # secret = request.headers["X-ADMIN-SECRET"]

    # unless secret == ENV["ADMIN_SEED_SECRET"]
    #   return render json: { error: "unauthorized" }, status: :unauthorized
    # end

    Rails.application.load_seed

    render json: { status: "seeded" }
  end
end
