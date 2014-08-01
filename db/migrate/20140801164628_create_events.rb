class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :bank_id
      t.integer :robber_id

      t.timestamps
    end
  end
end
