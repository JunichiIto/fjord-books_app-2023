# frozen_string_literal: true

module UsersHelper
  def current_user_name(user)
    [user.name, user.email].select(&:present?).first
  end
end
