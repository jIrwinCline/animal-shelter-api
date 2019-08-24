class Animal < ApplicationRecord
  validates :name, presence: true
  validates :species, presence: true
  validates :shelter, presence: true

  scope :random, -> {order("RANDOM()").limit(1)}

  def self.search_by_species(species)
    species = species.downcase
    self.where("lower(species) LIKE '%#{species}%'")
  end
end
