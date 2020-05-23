class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages, id: :uuid do |t|
      t.references :participant, null: false, foreign_key: true, type: :uuid
      t.text :message, null: false

      t.timestamps
    end
  end
end
