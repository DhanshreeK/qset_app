class SettingsController < ApplicationController
  def new
    @setting = Setting.first  
  end

  def update
    @setting = Setting.shod(params[:id])
   
    if @setting.update(setting_params)
      flash[:notice] = t('setting_update')
      redirect_to dashboard_home_index_path
    else
      render 'new'
    end
  
  end

  private

  # this private methods tell us exactly which parameters are allowed
  # into our controller actions.
  def setting_params
    params.require(:setting).permit(:p_series, :s_series,:ExpPurchase, :Exempt)
  end


end
