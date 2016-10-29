class GuessesController < ApplicationController
  def index

    g = Guess.new
    g.first_num = params["first_number"]
    g.second_num = params["second_number"]
    g.third_num = params["third_number"]
    if g.first_num != nil && g.second_num != nil && g.third_num != nil
    g.save
    end
    @list = Guess.all

    render("guesses/index.html.erb")
  end
  def answer

    @user_answer = params["rule"]

    render("guesses/answer.html.erb")
  end
  def clear

    Guess.destroy_all

      render("guesses/index.html.erb")
    end
end
