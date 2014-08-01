class CreateGangs < ActiveRecord::Migration
  def change
    create_table :gangs do |t|
      t.string :name
      t.string :lord

      t.timestamps
    end
  end
end
