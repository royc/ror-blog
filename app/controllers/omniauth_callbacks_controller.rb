class OmniauthCallbacksController < Devise::OmniauthCallbacksController
    def facebook
        @user = Author.from_omniauth(request.env["omniauth.auth"])
        sign_in_and_redirect @user
    end
end
