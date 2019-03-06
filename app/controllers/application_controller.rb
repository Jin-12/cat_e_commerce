class ApplicationController < ActionController::Base
    def myorder
        @myorder = Order.where(user_id: current_user.id)
    end
end
