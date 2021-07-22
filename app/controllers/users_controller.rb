class UsersController < ApplicationController
    
    def show
        user = User.find_by(id: params['id'])
        render json: user, include: :items
    end

    private

    # users_params = params.permit(:username, :city)

end
