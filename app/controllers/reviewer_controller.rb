class ReviewerController < ApplicationController
  before_action :set_book_site
  def create
   @reviewer = @book_site.reviewer.create(reviewer_params)
   redirect_to @book_site
  end
  private
  def set_book_site
   @book_site = Booksite.find(params[:reviewer_id])
  end
  def reviewer_params
   params[:reviewer].permit(:content)
  end
  end
end
