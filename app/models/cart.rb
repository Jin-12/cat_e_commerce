class Cart < ApplicationRecord
    has_one :user
    has_many :join_table_carts_items
    has_many :items , through: :join_table_carts_items
end
