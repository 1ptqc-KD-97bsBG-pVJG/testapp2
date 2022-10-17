class ApplicationController < ActionController::Base
    def account
        @user = current_user
    end

end
