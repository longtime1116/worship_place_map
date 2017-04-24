class WorshipPlaceController < ApplicationController
  def index
      @worship_places = WorshipPlace.all
  end
end
