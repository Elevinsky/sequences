class GuessesController < ApplicationController
  def index

    g = Guess.new
    g.first_num = params["first_number"]
    g.second_num = params["second_number"]
    g.third_num = params["third_number"]
    g.save

    @list = Guess.all

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
