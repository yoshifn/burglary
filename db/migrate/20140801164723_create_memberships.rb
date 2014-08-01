class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.integer :robber_id
      t.integer :gang_id

      t.timestamps
    end
  end
end
