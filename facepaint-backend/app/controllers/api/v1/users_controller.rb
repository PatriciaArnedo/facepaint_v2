class Api::V1::UsersController < ApplicationController

    def show
        user = User.find(params[:id])
        render json: user 
      end
    
      def index
        users = User.all.includes(:save_filters)
        render json: users
      end
    
      def create
        user = User.create(user_params)
        # render json: user
        if user.valid?
          render json: user
        else
          user = User.find_by(username: params[:username])
          if user
            render json: {error: "Username already exists"}
          else
            render json: {error: "Please Enter a Username and Password"}
          end
        end
      end

      def update
        user = User.find(params[:id])
        user.update(user_params)
        render json: user
      end
    
      def login
        user = User.find_by(username: params[:username])
        if (user && user.authenticate(params[:password]))
          render json: user
        else
          render json: {errors: "invalid username"}
        end
      end
    
      private
    
      def user_params
        params.permit(:username, :password, :avatar, :name, :instagram, :bio)
      end
        
end
