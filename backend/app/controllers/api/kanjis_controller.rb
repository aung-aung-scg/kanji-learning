# app/controllers/api/kanjis_controller.rb
module Api
  class KanjisController < ActionController::API
    def index
      kanjis = Kanji.where(jlpt_level: 5)
      render json: kanjis
    end

    def show
      kanji = Kanji.find(params[:id])
      render json: kanji
    end
  end
end
