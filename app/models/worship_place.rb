class WorshipPlace < ApplicationRecord
  has_one :temple, dependent: :destroy,
    foreign_key: "place_id",
    primary_key: "place_id"
  has_one :shrine, dependent: :destroy,
    foreign_key: "place_id",
    primary_key: "place_id"
end
