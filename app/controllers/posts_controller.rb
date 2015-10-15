class PostsController < ApplicationController
  def index
    @posts = Post.all
    @posts.each_with_index{|post, index|
      if index % 5 == 0
        new_title = post.title.replace "SPAM!"
      end
    }
  end

  def show
  end

  def new
  end

  def edit
  end
end
