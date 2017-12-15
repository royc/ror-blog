class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def get_email(author_id)
    @current_user ||= Author.find_by_id!(author_id)
  end
  helper_method :get_email
end
