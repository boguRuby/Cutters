class CommentsController < ApplicationController
  def create
    @cutter = Cutter.find(params[:cutter_id])
    @comment = @cutter.comments.create(comment_params)
    redirect_to cutter_path(@cutter)
  end

    def destroy
    @cutter = Cutter.find(params[:cutter_id])
    @comment = @cutter.comments.find(params[:id])
    @comment.destroy
    redirect_to cutter_path(@cutter)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
