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
        kanjis = kanjis
          .order(created_at: :desc)
          .limit(params[:limit].to_i)

        render json: kanjis
        return
      end

      page = params[:page].to_i > 0 ? params[:page].to_i : 1
      per_page = 20

      total = kanjis.count

      kanjis = kanjis
        .order(:id)
        .limit(per_page)
        .offset((page - 1) * per_page)

      render json: {
        data: kanjis,
        page: page,
        per_page: per_page,
        total: total,
        has_next: total > page * per_page,
        has_prev: page > 1
      }
    end


    def show
      kanji = Kanji.find(params[:id])

      prev = Kanji.where("id < ?", kanji.id).order(id: :desc).first
      next_kanji = Kanji.where("id > ?", kanji.id).order(id: :asc).first

      render json: {
        kanji: kanji,
        prev: prev,
        next: next_kanji
      }
    end

    private

    def create_kanji_once
      return unless ENV["CREATE_KANJI_ON_BOOT"] == "true"
      CreateKanji.call
    end
  end
end
