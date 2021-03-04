class CommentsController < ApplicationController


  def create
    comment = Comment.new(comment: { comment: { name: comment_params[:name], body: comment_params[:body] } })
    comment.prefix_options[:post_id] = comment_params[:post_id]

    if comment.save

    end
  end

  private

  def comment_params
    params.require(:post).permit(:name, :body, :post_id)
  end
end

