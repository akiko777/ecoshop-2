class Product < ApplicationRecord
  has_many_attached :image

  with_options presence: true do
    validates :nemu
    validates :price
    validates :introduction
    validates :shop_name
    validates :category_id
    validates :eco_appeal
    validates :images
  end
  
end
