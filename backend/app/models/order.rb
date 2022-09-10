class Order < ApplicationRecord
  belongs_to :created_by
  belongs_to :processed_by
  belongs_to :address

  has_many_attached :images
end
