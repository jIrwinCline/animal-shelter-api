class Animal < ApplicationRecord
  validates :name, presence: true
  validates :species, presence: true
  validates :shelter, presence: true
end
