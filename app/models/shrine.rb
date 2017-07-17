class Shrine < ApplicationRecord
  belongs_to :worship_place, 
    foreign_key: "place_id",
    primary_key: "place_id"
end
