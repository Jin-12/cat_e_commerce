require "administrate/base_dashboard"

class ItemDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    join_table_carts_items: Field::HasMany,
    carts: Field::HasMany,
    join_table_orders_items: Field::HasMany,
    orders: Field::HasMany,
    cat_image_attachment: Field::HasOne,
    cat_image_blob: Field::HasOne,
    id: Field::Number,
    title: Field::String,
    description: Field::Text,
    price: Field::String.with_options(searchable: false),
    image_url: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :title,
    :price,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :join_table_carts_items,
    :carts,
    :join_table_orders_items,
    :orders,
    :cat_image_attachment,
    :cat_image_blob,
    :id,
    :title,
    :description,
    :price,
    :image_url,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :join_table_carts_items,
    :carts,
    :join_table_orders_items,
    :orders,
    :cat_image_attachment,
    :cat_image_blob,
    :title,
    :description,
    :price,
    :image_url,
  ].freeze

  # Overwrite this method to customize how items are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(item)
  #   "Item ##{item.id}"
  # end
end
