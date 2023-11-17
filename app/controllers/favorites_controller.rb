class FavoritesController < ApplicationController

  def create
    book = Book.find(params[:book_id])
    favorites = current_user.favorites.new(book_id: book.id)
    favorites.save

    redirect_back(fallback_location: root_path)

      # if request.referer == book_path(book)
      #   redirect_to book_path(book)
      # elsif request.referer == user_path(current_user)
      #   redirect_to user_path(current_user)
      # else
      #   redirect_to books_path
      # end

  end

  def destroy
    book = Book.find(params[:book_id])
    favorites = current_user.favorites.find_by(book_id: book.id)
    favorites.destroy
    redirect_to '/books'
  end

end
