class QuestionsController < ApplicationController
    def ask
    end

    def answer
      @current_question = params[:question]

      if @current_question.end_with?("?")
        @answer = "Silly question, get dressed and go to work!"
        return @answer
      elsif @current_question == "I am going to work right now!"
        @answer = ""
        return @answer
      else
        @answer = "I don't care, get dressed and go to work!"
        return @answer
      end

    end
end
