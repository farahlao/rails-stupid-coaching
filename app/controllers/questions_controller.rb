class QuestionsController < ApplicationController
  def ask
    @question = params[:question]
  end

  def answer
    if params[:question] == 'I am going to work'
      @answer = 'great!'
    elsif params[:question].to_s.include?('?')
      @answer = 'Silly question, get dressed'
    else
      @answer = "I don't care go to le WAGON"
    end
  end
end
