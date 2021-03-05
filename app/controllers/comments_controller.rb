class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment: { comment: { name: comment_params[:name], body: comment_params[:comment_body] } })
    @comment.prefix_options[:post_id] = comment_params[:post_id]

    if @comment.save
      respond_to do |format|
        format.js {}
        format.html {}
      end
    end
  end

  private

  def comment_params
    params.require(:post).permit(:name, :comment_body, :post_id)
  end
end

