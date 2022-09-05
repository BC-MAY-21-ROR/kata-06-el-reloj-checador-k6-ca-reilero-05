class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :position
      t.string :email
      t.string :secret_number
      t.boolean :status
      t.boolean :presence
      t.references :store, null: false, foreign_key: true

      t.timestamps
    end
  end
end
