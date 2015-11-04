class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :password_digest
      t.string :address
      t.string :city
      t.integer :zipcode
      t.string :country

      t.timestamps null: false
    end
  end
end
