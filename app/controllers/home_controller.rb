class HomeController < ApplicationController
  def index
	@toners = Toner.find(:all)
  end
end
