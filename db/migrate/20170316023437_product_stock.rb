class ProductStock < ActiveRecord::Migration[5.0]
  def change
  	add_column :products, :instock, :boolean
  	add_column :products, :outofstock, :boolean
  end
end
