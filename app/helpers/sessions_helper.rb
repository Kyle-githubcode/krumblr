module SessionsHelper
    #sets user id in session cookie
    def log_in(user)
        session[:user_id] = user.id
    end

    #finds user object based on the id in the session
    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
    end

    def logged_in?
        current_user.present?
    end
end
