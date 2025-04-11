class Dish < ApplicationRecord
  belongs_to :category
  validates :name, uniqueness: { case_sensitive: false, message: "já está cadastrado no menu" }
end