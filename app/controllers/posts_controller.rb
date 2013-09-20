class PostsController < ApplicationController
	
	def index
		@posts = Post.all
	end

	def new
	end

	def create
		@post = Post.new(params[:post].permit(:title, :text))

		@post.save
		redirect_to @post

		#render text: params[:post].inspect
	end

	def show
		@post = Post.find(params[:id])
	end

end
