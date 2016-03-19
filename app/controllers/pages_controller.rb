class PagesController < ApplicationController

	def index
	end

	def resume
	end

	def resources
		@posts = Post.all.where(:resource => 1).order('created_at DESC')
	end
end
