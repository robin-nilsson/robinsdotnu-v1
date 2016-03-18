class PostsController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]

	def index
		if params[:tag].present?
			@posts = Post.tagged_with(params[:tag])
		else
			@posts = Post.all.order('created_at DESC')
		end
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		if @post.save
			redirect_to @post, success: 'The Post has been successfully published.'
		else
			render 'new', error: 'Something went wrong and the Post could not be updated.'
		end
	end

	def show
		@post = Post.friendly.find(params[:id])
	end

	def edit
		@post = Post.friendly.find(params[:id])
	end

	def update
		@post = Post.friendly.find(params[:id])

		if @post.update(params[:post].permit(:title, :body))
			redirect_to @post, success: 'The Post has been successfully updated.'
		else
			render 'edit', error: 'Something went wrong and the Post could not be updated.'
		end
	end

	def destroy
		@post = Post.friendly.find(params[:id])
		if @post.destroy
			redirect_to posts_path, success: 'The Post has been successfully deleted.'
		else
			redirect_to posts_path, error: 'Something went wrong and the Post could not be deleted.'
		end
	end

	private

	def post_params
		params.require(:post).permit(:title, :body, :tag_list)
	end
end
