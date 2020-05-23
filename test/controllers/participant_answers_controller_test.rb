require 'test_helper'

class ParticipantAnswersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @participant_answer = participant_answers(:one)
  end

  test "should get index" do
    get participant_answers_url, as: :json
    assert_response :success
  end

  test "should create participant_answer" do
    assert_difference('ParticipantAnswer.count') do
      post participant_answers_url, params: { participant_answer: { answer_id: @participant_answer.answer_id, participant_id: @participant_answer.participant_id } }, as: :json
    end

    assert_response 201
  end

  test "should show participant_answer" do
    get participant_answer_url(@participant_answer), as: :json
    assert_response :success
  end

  test "should update participant_answer" do
    patch participant_answer_url(@participant_answer), params: { participant_answer: { answer_id: @participant_answer.answer_id, participant_id: @participant_answer.participant_id } }, as: :json
    assert_response 200
  end

  test "should destroy participant_answer" do
    assert_difference('ParticipantAnswer.count', -1) do
      delete participant_answer_url(@participant_answer), as: :json
    end

    assert_response 204
  end
end
