class WelcomeController < ApplicationController
  def index
    @code = Code.new
  end
end
