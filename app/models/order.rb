class Order < ApplicationRecord
    belongs_to :user
    has_many :join_table_orders_items
    has_many :items, through: :join_table_orders_items
end
