class Product < ApplicationRecord
  enum :category, { specialties: 0, shaved_ice: 1, dessert: 3 }
  validates_presence_of :title, :ingredients
  has_rich_text :ingredients
end
