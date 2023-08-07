# frozen_string_literal: true

class Seller::SessionsController < Devise::SessionsController
  before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  def new
    super
  end

  # POST /resource/sign_in
  def create
    @seller = Seller.find_by_email(params[:seller][:email])
    binding.pry
    if @seller.present?
      self.resource = warden.authenticate!(auth_options)
      sign_in @seller
      redirect_to products_path
    end
  end

  # DELETE /resource/sign_out
  def destroy
    super
  end

  protected

  If you have extra params to permit, append them to the sanitizer.
  def configure_sign_in_params
    devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  end
end
