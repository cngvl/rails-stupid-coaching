class QuestionsController < ApplicationController
  # def home; end
  def ask; end

  def answer
    # raise is the same as debugger
    @question = params[:question]

    @coach_answer = (if @question == 'I am going to work'
                       'Great!'
                     elsif @question.include?('?')
                       'Silly question, get dressed and go to work!'
                     else
                       "I don't care, get dressed and go to work!"
                     end)

    @coach_answer
  end
end
