  class QuestionsController < ApplicationController
    def ask
    end

    def answer
      @question = params[:usersentence]
      @answer = ""
      if params[:usersentence] == "I am going to work"
        @answer = "Great!"
      elsif params[:usersentence].include?("?")
        @answer = "Silly question, get dressed and go to work!"
      else
        @answer = "I don't care, get dressed and go to work!"
      end
    end
  end
