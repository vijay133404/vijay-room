class BlogsController < ApplicationController
	before_action :authenticate_user!,except: [:index]
	def new
		@blog = Vijay.new
      end

	def edit
	  @blog = Vijay.find(params[:id])
	end

  def index
    @blogs = Vijay.all
  end

	
  def show
    @blog = Vijay.find(params[:id])
  end

	def create
	  @blog = Vijay.new(blog_params)
	 
	  if  @blog.save
	      redirect_to "/blogs/#{@blog.id}"
	  else
	    render 'new'
	  end
	end

  def update     
	  @blog =Vijay.find(params[:id])	 
	  if @blog.update(blog_params)
	    redirect_to "/blogs/#{@blog.id}"
	  else
	    render 'edit'
	  end
  end

  def destroy
    @blog = Vijay.find(params[:id])
    @blog.destroy
 
    redirect_to blogs_path
  end

  #def create_blog
  	#@blog = Vijay.new(blog_params)
	 
	  #if  @blog.save
	      #redirect_to "/blogs/#{@blog.id}"
	  #else
	    #render 'new'
	  #send
  #end
	

	def arvind
	end
    private
	  def blog_params
	    params.require(:blog).permit(:title, :text)
	  end
end
