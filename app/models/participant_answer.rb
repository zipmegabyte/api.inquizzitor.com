class ParticipantAnswer < ApplicationRecord
  belongs_to :participant
  belongs_to :answer
end
