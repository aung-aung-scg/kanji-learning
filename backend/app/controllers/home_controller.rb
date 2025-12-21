class HomeController < ApplicationController
  def index
    render json: { message: "Welcome to Kanji Learning API" }
  end

  def seed
    puts "called seedddd=============="
    # secret = request.headers["X-ADMIN-SECRET"]

    # unless secret == ENV["ADMIN_SEED_SECRET"]
    #   return render json: { error: "unauthorized" }, status: :unauthorized
    # end
    begin
      # Correct Rails 8 way to run pending migrations programmatically
      # ActiveRecord::Tasks::DatabaseTasks.migrate

      # Rails.application.load_seed
       path = Rails.root.join("db/jlpt/n4_seed.rb")

      raise "Seed file not found: #{path}" unless File.exist?(path)

      load path

      render json: {
        status: "seeded successfully",
        kanji_count: Kanji.where(jlpt_level: 4).count
      }
    rescue => e
      render json: {
        error: "Failed: #{e.message}",
        details: e.backtrace[0..10]
      }, status: 500
    end
  end
end
