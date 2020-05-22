class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers, id: :uuid do |t|
      t.text :answer
      t.boolean :correct
      t.integer :order, null: false
      t.references :question, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
