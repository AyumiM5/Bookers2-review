class BookCommentsController < ApplicationController
  
  def create
    book = Book.find(params[:book_id])
    comment = current_user.book_comments.new(comment_params)
    comment.book_id = book.id
    if comment.save
      redirect_to book_path(book.id)
    else
      render book_path(book.id)
    end
  end
  
  def destroy
  end
  
  private
  
  def comment_params
    params.require(:book_comment).permit(:comment)
  end
  
end