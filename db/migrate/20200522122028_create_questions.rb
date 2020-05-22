class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions, id: :uuid do |t|
      t.text :question
      t.integer :order, null: false
      t.references :quiz, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
