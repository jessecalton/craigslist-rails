class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @posts = Post.all
  end
end
