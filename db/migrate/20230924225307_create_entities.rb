class CreateEntities < ActiveRecord::Migration[7.0]
  def change
    create_table :entities do |t|
      t.string :name
      t.string :icon
      t.string :group, foreign_key: {to_table: :group}
      t.timestamps
    end
  end
end
