class HomeController < ApplicationController
  def index
    render json: { message: "Welcome to Kanji Learning API" }
  end

  def seed
    # secret = request.headers["X-ADMIN-SECRET"]

    # unless secret == ENV["ADMIN_SEED_SECRET"]
    #   return render json: { error: "unauthorized" }, status: :unauthorized
    # end
    begin
      ActiveRecord::Migrator.migrate(ActiveRecord::Migrator.migrations_paths)
      Rails.application.load_seed
      render json: { status: "seeded successfully" }
    rescue => e
      render json: { error: e.message, backtrace: e.backtrace[0..10] }, status: 500
    end

    render json: { status: "seeded" }
  end
end
