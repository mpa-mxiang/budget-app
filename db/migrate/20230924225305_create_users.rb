class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.references :author, null: false, foreign_key: { to_table: :entities}
      t.references :group, null: false, foreign_key: { to_table: :groups}
      t.timestamps
    end
  end
end
