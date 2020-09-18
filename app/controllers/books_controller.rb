class BooksController < ApplicationController
	def index
		@books = Book.order(:id)
	end

	def show
		@book = Book.find(params[:id])
	end

	def new
		@book = Book.new
	end

	def create
		#instantiate new object
		@book = Book.create(book_params)
		#save object
		if @book.save
			#save succedes
			redirect_to(books_path)
		else
			#save fails
			render('new')
		end
	end

	def edit	
		@book = Book.find(params[:id])
	end

	def update
		@book = Book.find(params[:id])
		if @book.update(book_params)
			#update succedes
			redirect_to(book_path(@book))
		else
			#update fails
			render('edit')
		end
	end

	def delete
		@book = Book.find(params[:id])
	end

	def destroy
		@book = Book.find(params[:id])
		@book.destroy
		redirect_to(books_path)
	end

	private

	def book_params
		params.require(:book).permit(:title, :author, :genre, :price, :published_date, :id)
	end

end
