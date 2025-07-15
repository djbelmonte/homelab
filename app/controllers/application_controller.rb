class ApplicationController < ActionController::Base
  include Pagy::Backend
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  helper_method :root_path

  def root_path
    user_signed_in? ? authenticated_root_path : unauthenticated_root_path
  end
end
