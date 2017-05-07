class WelcomesController < ApplicationController
  def new
     redirect_to orders_path if logged_in?
  end
end
