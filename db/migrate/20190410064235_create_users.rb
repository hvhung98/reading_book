class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.references :role, foreign_key: true
      t.string :name
      t.string :email
      t.string :status, default: "normal"

      t.timestamps
    end
  end
end
