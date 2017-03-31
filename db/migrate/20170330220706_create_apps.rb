class CreateApps < ActiveRecord::Migration[5.0]
  def change
    create_table :apps do |t|
      t.integer :app_id

      t.timestamps
    end
    add_index :apps, :app_id, unique: true
  end
end
