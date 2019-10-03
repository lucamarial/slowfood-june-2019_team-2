class AddCategoryToProducts < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :category, foregin_key: true
  end
end
