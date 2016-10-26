class GuessesController < ApplicationController
  def index

    @first_guess = params["first_number"]
    @second_guess = params["second_number"]
    @third_guess = params["third_number"]


    render("guesses/index.html.erb")
  end
  def answer

    @user_answer = params["rule"]

    render("guesses/answer.html.erb")
  end
end
