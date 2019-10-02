class PostsController < ApplicationController
  before_action :setup

  def index
  end

  def show
    @post = @posts[params[:id].to_i - 1]
    if @post.nil?
        flash[:error] = "Post with ID #{params[:id]} not found!"
        redirect_to posts_path
    end
  end

  def setup
    @posts = [
      {
        title: "Hello",
        author: "Matt",
        content: "This is the first post",
        image_url: "http://lorempixel.com/400/200",
      },
      {
        title: "Goodbye",
        author: "Matt",
        content: "This is the second post",
        image_url: "http://lorempixel.com/401/201",
      },
    ]
  end
end
