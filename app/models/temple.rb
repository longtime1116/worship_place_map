class Temple < ApplicationRecord
  belongs_to :worship_place, 
    foreign_key: "place_id"
end
