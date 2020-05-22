class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users, id: :uuid do |t|
      t.string :email
      t.string :name
      t.string :auth_token

      t.timestamps
    end
    add_index :users, :auth_token, unique: true
    add_index :users, :email, unique: true
  end
end
