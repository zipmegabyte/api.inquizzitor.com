class PartiesChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from 'parties'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def receive(data)
    party = Party.find(data['id'])
    party.update!(question_id: data['question_id'])

    ActionCable.server.broadcast('party', data)
  end
end
