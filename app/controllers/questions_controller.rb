# frozen_string_literal: true

# This is the QuestionsController class responsible for handling questions-related actions.
class QuestionsController < ApplicationController
  def ask; end

  def answer
    @question = params[:question]
    @answer = if @question == 'I am going to work'
                'Great!'
              elsif @question.include?('?')
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end