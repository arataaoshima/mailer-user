class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(posts_params)
    @post.user_id = @current_user.id
    @post.save
    flash[:success] = "Post is successfully created!"
    redirect_to posts_path
  end

  def index
    @posts = Post.all
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private
   def posts_params
     params.require(:post).permit(:title, :content, category_ids: [])
   end

end
