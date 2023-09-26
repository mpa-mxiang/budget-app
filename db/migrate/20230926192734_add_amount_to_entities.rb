class AddAmountToEntities < ActiveRecord::Migration[7.0]
  def change
    add_column :entities, :amount, :decimal
  end
end
