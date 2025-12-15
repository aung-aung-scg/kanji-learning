class AdminController < ActionController::API
  def seed
    secret = request.headers["X-ADMIN-SECRET"]

    return head :unauthorized unless secret == ENV["ADMIN_SEED_SECRET"]

    Rails.application.load_seed

    render json: { status: "seeded" }
  end
end
