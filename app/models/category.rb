class Category < ApplicationRecord
  has_many :adverts
  # belongs_to :advert
end
