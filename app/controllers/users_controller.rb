class UsersController < ApplicationController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]
  before_action :move_to_index, except: [:index, :show]

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  #   def new
  #     @user = User.new
  #   end

  #   def create
  #     @user = User.new(sign_up_params)
  #     binding.pry
  #     unless @user.valid?
  #       flash.now[:alert] = @user.errors.full_messages
  #       render :new and return
  #     end
  #     # session["devise.regist_data"] = {user: @user.attributes}
  #     # session["devise.regist_data"][:user]["password"] = params[:user][:password]
  #  end

  #   def create_send_destination
  #     @user = User.new(session["devise.regist_data"]["user"])
  #     @send_destination = SendDestination.new(send_destination_params)
  #     unless @send_destination.valid?
  #       flash.now[:alert] = @send_destination.errors.full_messages
  #       render :new_send_destination and return
  #     end
  #     @user.build_send_destination(@send_destination.attributes)
  #     @user.save
  #     sign_in(:user, @user)
  #     redirect_to root_path
  #   end

  private

  # def user_params
  #   params.require(:user).permit(:first_name, :family_name, :first_name_kana, :family_name_kana, :birth_day)
  # end

  #   def send_destination_params
  #     params.require(:send_destination).permit(:destination_first_name, :destination_family_name, :destination_first_name_kana, :destination_family_name_kana, :post_code, :prefecture_code, :city, :house_number, :building_name, :phone_number)
  #   end
end
