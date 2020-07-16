module Api
	module V1
    class UserController < ApplicationController
      before_action :authorize_request, except: :create
      
      def index
				users = User.order('created_at DESC');
				render json: { data:users },  status: :ok
      end
      
      def show
				user = User.find(params[:id])
				render json: {data:user},status: :ok
      end
      
      def create
				user = User.new(user_params)
				if user.save
					render json: {status: 'SUCCESS', data:user},status: :ok
				else
					render json: {status: 'ERROR', data:user.errors},status: :unprocessable_entity
				end
      end

      def update
				user = User.find(params[:id])
				if user.update_attributes(user_params)
					render json: {status: 'SUCCESS', data:user},status: :ok
				else
					render json: {status: 'ERROR', data:user.errors},status: :unprocessable_entity
				end
      end
      
      def destroy
				user = User.find(params[:id])
				user.destroy
				render json: {status: 'SUCCESS', data:user},status: :ok
      end
      
      private
			def user_params
				params.permit(:name, :email, :password)
			end
      
		end
	end
end