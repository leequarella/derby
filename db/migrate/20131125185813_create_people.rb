class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zip
      t.string :email
      t.string :derby_name
      t.string :phone
      t.string :user_name
      t.string :password_digest

      t.timestamps
    end
  end
end
