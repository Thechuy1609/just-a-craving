class Product < ApplicationRecord
  enum :category, { special_cravings: 0, shaved_ice: 1, dessert: 3 }
  validates_presence_of :title, :ingredients
  has_rich_text :ingredients
  has_one_attached :product_picture

 def self.category_select_options
  categories.keys.map { |c| [ c.titleize, c ] }
 end

end
