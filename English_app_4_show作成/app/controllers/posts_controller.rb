class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.find_by(id: 1)
    @post.content
  end

  def create
    @post = Post.new(content: params[:content])
    @post.save
    redirect_to("/posts/index")
  end

  def show
    @post = Post.find_by(id: params[:id])
  end
end
