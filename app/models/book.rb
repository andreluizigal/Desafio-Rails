class Book < ApplicationRecord
  belongs_to :author
  belongs_to :category

  validates :stock, numericality: { only_integer: true, greater_than_or_equal_to: 0}
end
