class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def get_email(author_id)
    @current_user = Author.find_by_id!(author_id)
  end
  helper_method :get_email

  def authenticate_author!
    if author_signed_in?
      super
    else
      redirect_to author_facebook_omniauth_authorize_url ## , :notice => 'if you want to add a notice'
      ## if you want render 404 page
      ## render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
    end
  end
end
