class PostsController < ApplicationController

  def index
    posts = Post.all
    view('posts/index', Post.all)
  end

  def show
    view('posts/show', post)
  end

  def new
    view('posts/form', Post.new)
  end

  def edit
    view('posts/form', post)
  end

  def create
    post = Post.new(post_params)

    post.save ? redirect_to(post) : view('posts/form', post)
  end

  def update
    post.update(post_params) ? redirect_to(post) : view('posts/form', post)
  end

  def destroy
    post.destroy
    redirect_to posts_url
  end

  private

  def post
    @post ||= Post.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def post_params
    params.require(:post).permit(:title, :body, :author_id)
  end
end
