class CreateParticipants < ActiveRecord::Migration[6.0]
  def change
    create_table :participants, id: :uuid do |t|
      t.references :party, null: false, foreign_key: true, type: :uuid
      t.references :user, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
