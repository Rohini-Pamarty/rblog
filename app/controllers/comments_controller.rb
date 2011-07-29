class CommentsController < ApplicationController
def new
    @post = Post.find(params[:post_id])
    @comment =Comment.new
end
  def create
    @post = Post.find(params[:post_id])
    if  @post.comments.create!(params[:comment])
   		redirect_to (posts_path)
	else
		render :action => "new"
	end

    
end
def index
@post = Post.find(params[:post_id])
@comment=@post.comments

end
def destroy
	@post = Post.find(params[:post_id])
	@comment = @post.comments.find(params[:id])
	@comment.destroy
	 respond_to do |format|
    	format.html {redirect_to @post}
	

     end	
end

end
