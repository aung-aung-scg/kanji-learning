# app/controllers/api/kanjis_controller.rb
module Api
  class KanjisController < ActionController::API
    before_action :create_kanji_once, only: :index

    def index
      kanjis = Kanji.where(jlpt_level: 5)
      render json: kanjis
    end

    def show
      kanji = Kanji.find(params[:id])
      render json: kanji
    end

    private

    def create_kanji_once
      return unless ENV["CREATE_KANJI_ON_BOOT"] == "true"
      CreateKanji.call
    end
  end
end
