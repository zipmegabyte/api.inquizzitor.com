class ParticipantAnswersController < ApplicationController
  before_action :set_participant_answer, only: [:show, :update, :destroy]

  # GET /participant_answers
  def index
    @participant_answers = ParticipantAnswer.all

    render json: @participant_answers
  end

  # GET /participant_answers/1
  def show
    render json: @participant_answer
  end

  # POST /participant_answers
  def create
    @participant_answer = ParticipantAnswer.new(participant_answer_params)

    if @participant_answer.save
      render json: @participant_answer, status: :created, location: @participant_answer
    else
      render json: @participant_answer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /participant_answers/1
  def update
    if @participant_answer.update(participant_answer_params)
      render json: @participant_answer
    else
      render json: @participant_answer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /participant_answers/1
  def destroy
    @participant_answer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_participant_answer
      @participant_answer = ParticipantAnswer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def participant_answer_params
      params.require(:participant_answer).permit(:participant_id, :answer_id)
    end
end
