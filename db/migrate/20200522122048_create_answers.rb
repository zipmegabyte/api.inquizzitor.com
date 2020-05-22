class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers, id: :uuid do |t|
      t.text :answer
      t.boolean :correct
      t.integer :order
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
