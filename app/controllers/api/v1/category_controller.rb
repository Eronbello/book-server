module Api
	module V1
    class CategoryController < ApplicationController
      before_action :authorize_request

      def index
				categories = Category.order('created_at DESC')
				render json: { data:categories },  status: :ok
      end
      
		end
	end
end