# app/controllers/api/kanjis_controller.rb
module Api
  class KanjisController < ActionController::API
    before_action :create_kanji_once, only: :index

    def index
      kanjis = Kanji.all

      if params[:jlpt].present?
        kanjis = kanjis.where(jlpt_level: params[:jlpt])
      end

      if params[:limit].present?
        kanjis = kanjis.order(created_at: :desc).limit(params[:limit])
      end

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
