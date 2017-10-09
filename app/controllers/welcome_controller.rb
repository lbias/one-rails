class WelcomeController < ApplicationController
  def index
    flash[:notice] = "What's up? "
  end
end
