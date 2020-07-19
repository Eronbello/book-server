module Api
	module V1
    class BookController < ApplicationController
      before_action :authorize_request

      def index
        total = Book.where(book_params).count
        books = Book.where(book_params).page(params[:page]).joins(:category).select("books.* ,categories.title as category_title")
				render json: { data:books, total: total },  status: :ok
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

      def availables
        total = Book.where(book_params).count
        books = Book.availables.page(params[:page]).where(book_params).joins(:category).select("books.* ,categories.title as category_title")
        render json: { data:books, total: total },  status: :ok
      end

      def borroweds
        total = Book.where(book_params).count
        books = Book.borroweds.page(params[:page]).where(book_params).joins(:category).select("books.* ,categories.title as category_title")
        render json: { data:books, total: total },  status: :ok
      end

      def create_loan
        id = params[:id]
        user_id = params[:user_id]
        book = Book.find id
        if book
          if book.borrowed_by
            render json: { error: "Already borrowed" },  status: :unprocessable_entity
          end
          book.update(borrowed_by: user_id)
        end
				render json: { data:book },  status: :ok
      end

      private
			def book_params
				params.permit(:id, :title, :category_id, :author, :description, :background, :user_id, :available, :borrowed_by)
			end
      
		end
	end
end

Book.create({ title: 'Eron', author: 'Teste', description: 'teste', background: '', user_id: 1, category_id: 1})