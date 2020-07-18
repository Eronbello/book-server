module Api
	module V1
    class BookController < ApplicationController
      before_action :authorize_request

      def index
				books = Book.page(params[:page]).where(book_params)
				render json: { data:books },  status: :ok
      end
      
      def show
				book = Book.find(params[:id])
				render json: {data:book},status: :ok
      end
      
      def create
				book = Book.new(book_params)
				if book.save
					render json: {status: 'SUCCESS', data: book},status: :ok
				else
					render json: {status: 'ERROR', data: book.errors},status: :unprocessable_entity
				end
      end

      def update
				book = Book.find(params[:id])
				if book.update_attributes(book_params)
					render json: {status: 'SUCCESS', data:book},status: :ok
				else
					render json: {status: 'ERROR', data:book.errors},status: :unprocessable_entity
				end
      end
      
      def destroy
				book = Book.find(params[:id])
				book.destroy
				render json: {status: 'SUCCESS', data:book},status: :ok
      end

      def create_loan
        id = params[:id]
        user_id = params[:user_id]
        book = Book.find id
        if book
          book.update(borrowed_by: user_id)
        end
				render json: { data:book },  status: :ok
      end

      private
			def book_params
				params.permit(:id, :title, :category, :author, :description, :background, :user_id, :available, :borrowed_by)
			end
      
		end
	end
end