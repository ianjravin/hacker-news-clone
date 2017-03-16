class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def destroy
    @post = Post.find(params[:id])
    @post.delete
    flash[:notice] ="Post deleted"
    redirect_to('/posts')
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] ="Post created"
      redirect_to('/posts')
    else
      render('/posts/new')
    end
  end

  def upvote
    @post = Post.find(params[:id])
    vote = @post.vote_up
    if @post.update(votes: vote)
      redirect_to('/posts')
      flash[:success] ="You voted!"
    else
      render('/posts')
    end
  end


  private

  def post_params
    params.require(:post).permit(:link, :user_id, :title)
  end



end
