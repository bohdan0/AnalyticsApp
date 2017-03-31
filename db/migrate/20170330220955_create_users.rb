class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.integer :user_id

      t.timestamps
    end
    add_index :users, :user_id, unique: true
  end
end
