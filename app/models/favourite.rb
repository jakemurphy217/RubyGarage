class Favourite < ApplicationRecord
  belongs_to :carsforsale
  belongs_to :user
end
