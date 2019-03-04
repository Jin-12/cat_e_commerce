class Item < ApplicationRecord
  validates: title, presence: true, uniqueness: true, length: 5..50
validates: price, presence: true, numericality: true
validates: description, presence: true, length: 20..150
validates: image_url, presence: true, format: { with: /^(http:\/\/www\.|https:\/\/www\.|http:\/\/|https:\/\/)?[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/}
validates_numericality_of :price, :greater_than => 0.0
end
