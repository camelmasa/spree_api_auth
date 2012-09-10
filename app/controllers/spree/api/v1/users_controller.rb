module Spree
  module Api
    module V1
      class UsersController < Spree::Api::V1::BaseController
        before_filter :check_for_api_key, :except => [:sign_up, :sign_in]

        def sign_up
          @user = Spree::User.new(params[:user])
          if !@user.save
            unauthorized 
            return 
          end
          @user.generate_spree_api_key!
        end

        def sign_in
          @user = Spree::User.find_by_email(params[:user][:email])
          if !@user.present? || !@user.valid_password?(params[:user][:password])
            unauthorized
            return 
          end
          @user.generate_spree_api_key! if @user.spree_api_key.blank?
        end

      end
    end
  end
end
