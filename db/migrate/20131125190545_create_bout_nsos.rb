class CreateBoutNsos < ActiveRecord::Migration
  def change
    create_table :bout_nsos do |t|
      t.integer :bout_id
      t.integer :person_id

      t.timestamps
    end
  end
end
