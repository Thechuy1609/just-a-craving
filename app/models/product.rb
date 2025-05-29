class Product < ApplicationRecord
  enum :category, { shaved_ice: 0, drink: 1, dessert: 3 }
end
