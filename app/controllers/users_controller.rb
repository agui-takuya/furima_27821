class UsersController < ApplicationController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]
  before_action :move_to_index, except: [:index, :show]

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  private

  
end
