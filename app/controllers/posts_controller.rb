class PostsController < ApplicationController
  
    def new
      @place = Place.new
    end
  
    def create
      @post = Post.new(params["name"])
      @post.save
      redirect_to "/posts"
    end
  
  
    def update
      @post = Post.find(params["id"])
      @post.update(params["name"])
      redirect_to "/posts"
    end
  
    def destroy
      @post = Post.find(params["id"])
      @post.destroy
      redirect_to "/posts"
    end
  
  end