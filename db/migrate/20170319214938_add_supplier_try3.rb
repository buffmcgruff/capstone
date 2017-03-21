class AddSupplierTry3 < ActiveRecord::Migration[5.0]
  def change
  	add_column :products, :supplier_id, :integer
  end
end
