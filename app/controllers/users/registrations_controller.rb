# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  def destroy
    resource.destroy
    Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name)
    set_flash_message! :notice, :destroyed
    yield resource if block_given?
    # status:とnotice:を追加
    respond_with_navigational(resource) { redirect_to after_sign_out_path_for(resource_name), status: :see_other, notice: find_message(:destroyed) }
  end
end
