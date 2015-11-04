class CreateCharities < ActiveRecord::Migration
  def change
    create_table :charities do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :discription
      t.string :causes
      t.integer :number_donors
      t.string :project_one_title
      t.integer :donation_total
      t.string :projects_one_discription
      t.string :image

      t.timestamps null: false
    end
  end
end
