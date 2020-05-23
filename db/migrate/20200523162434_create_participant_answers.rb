class CreateParticipantAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :participant_answers, id: :uuid do |t|
      t.references :participant, null: false, foreign_key: true, type: :uuid
      t.references :answer, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
