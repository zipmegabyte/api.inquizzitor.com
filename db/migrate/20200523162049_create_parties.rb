class CreateParties < ActiveRecord::Migration[6.0]
  def change
    create_table :parties, id: :uuid do |t|
      t.references :quiz, null: false, foreign_key: true, type: :uuid
      t.references :question, null: false, foreign_key: true, type: :uuid
      t.boolean :active, null: false

      t.timestamps
    end
  end
end
