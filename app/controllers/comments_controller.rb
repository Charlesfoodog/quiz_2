class CommentsController < ApplicationController
def create
    @support_request = SupportRequest.find(params[:id])
    @comment  = @support_request.comments.new(comment_attributes)
    if @comment.save
      redirect_to @support_request, notice: "comment created successfully!"
    else
      render "support_request_path"
    end
  end

  private

  def comment_attributes
    params.require(:comment).permit([:body])
  end

end
