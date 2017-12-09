class HomeController < ApplicationController
	
  def index
  end

  def dashboard
  	@charted_accountant = current_user.charted_accountant
  	@general_setting = current_user.general_setting
    @party = current_user.party
  end

  def show
  	
  end
  
end