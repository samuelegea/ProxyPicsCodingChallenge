class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :orders, foreign_key: :created_by_id
  has_many :processed_orders, class_name: 'Order', foreign_key: :processed_by_id
  has_and_belongs_to_many :addresses, join_table: :address_users
end
