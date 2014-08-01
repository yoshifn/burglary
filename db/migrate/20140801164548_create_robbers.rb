class CreateRobbers < ActiveRecord::Migration
  def change
    create_table :robbers do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
