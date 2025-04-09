class Category < ApplicationRecord
  has_many :dishes, dependent: :destoy
end
