class PostsController < ApplicationController

  def new
  end

  #post GET    /posts/:id(.:format)      posts#show

  def create
    #@post = Post.new(params[:post])
    @post = Post.new(post_params)
    @post.save
    redirect_to @post
  end

  def show
    @post = Post.find(params[:id])
  end

  private
    def post_params
      params.require(:post).permit(:title, :text)
    end
end
