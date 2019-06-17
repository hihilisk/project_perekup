class Advert < ApplicationRecord
  has_one :category
  has_one :check_list

  validates :phone, length: {minimum: 10, maximum: 12}
  validates :url,   uniqueness: {case_sensitive: false}

end
