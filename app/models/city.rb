class City < ApplicationRecord

  belongs_to :state, foreign_key: "state_id"
end
