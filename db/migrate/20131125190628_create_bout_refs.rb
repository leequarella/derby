class CreateBoutRefs < ActiveRecord::Migration
  def change
    create_table :bout_refs do |t|
      t.integer :bout_id
      t.integer :person_id

      t.timestamps
    end
  end
end
