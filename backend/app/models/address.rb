class Address < ApplicationRecord
  validates :address_line1, :address_line2, :zipcode, :city, :state, :country, presence: true

  has_and_belongs_to_many :users, join_table: :address_users
  has_many :orders
end
