class WorshipPlaceController < ApplicationController
  def index
    @check_box_status = {"寺" => true, "神社" => true }

    # Temple/Shrine table の情報をマージした WorshipPlace のインスタンスを作る
    @worship_places = WorshipPlace.eager_load(:shrine, :temple)
    # メモ: Temple/Shrine それぞれ固有のデータにアクセスする方法は以下
    #    @worship_places.each do |worship_place|
    #      p worship_place.shrine.rank if !worship_place.is_temple
    #      p worship_place.temple.rank if worship_place.is_temple
    #    end
  end

  def search
    unless post_params.nil? then
      # TODO 寺、神社以外の文字列がきた時の例外処理
      # TODO どちらも選択されなかったときの画面用意
      # 寺, 神社の検索ボックスを元にモデルを検索
      search_types = []
      @check_box_status = {"寺" => false, "神社" => false }
      if post_params[:types].include?("寺") then
        search_types << true
        @check_box_status["寺"] = true
      end
      if post_params[:types].include?("神社") then
        search_types << false
        @check_box_status["神社"] = true
      end
      @worship_places = WorshipPlace.where(is_temple: search_types)
      # view の index を表示
      render :action =>"index"
    else
      render :text => "寺または神社を選択してください"
    end
  end

  private
  def post_params
    unless params[:worship_form].blank? then
      params.require(:worship_form).permit(
        types: []
      )
    end
  end
end
