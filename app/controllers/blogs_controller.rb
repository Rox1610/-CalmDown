class BlogsController < ApplicationController
  before_action :set_blog, only: %i[show update]

  def index
    if params[:query].present?
      @blogs = Blog.search_by_title_and_content(params[:query])
    else
      @blogs = Blog.all
    end
  end

  def show
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    @blog.user = current_user
    if @blog.save
      redirect_to blogs_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_blog
    @blog = Blog.find(params[:id])
  end

  def blog_params
    params.require(:blog).permit(:title, :content, :date)
  end
end
