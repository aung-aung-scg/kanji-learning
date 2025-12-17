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
      # This is the correct, official way in Rails 7/8 to run pending migrations from code
      ActiveRecord::Base.connection.migration_context.migrate

      Rails.application.load_seed

      render json: {
        status: "seeded successfully",
        kanji_count: Kanji.count,
        migrated: true
      }
    rescue => e
      render json: {
        error: "Failed: #{e.message}",
        details: e.backtrace[0..10]
      }, status: 500
    end
  end
end
