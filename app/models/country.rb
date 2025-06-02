class Country < ApplicationRecord
  has_many :employees

  has_many :state
  has_many :cities, through: :states
end
