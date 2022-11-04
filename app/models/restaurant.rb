class Restaurant < ApplicationRecord

  validates :nom, presence: true
  validates :adresse, presence: true

end
