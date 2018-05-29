class WelcomeController < ApplicationController

  def index
    @name = "Joe"
  end

  def hello
    @name = "to me!"
  end

end
