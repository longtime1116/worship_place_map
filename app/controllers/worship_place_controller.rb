class WorshipPlaceController < ApplicationController
  def index
      @worship_places = WorshipPlace.all
  end

  def search
      @worship_places = WorshipPlace.all
      post_params
      # view の index を表示
      render :action =>"index"
  end

  private
  def post_params
    unless params[:worship_form].blank? then
      params.require(:worship_form).permit(
        type: []
      )
    end
  end
end
