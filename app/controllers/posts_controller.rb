class PostsController < ApplicationController
    before_action :set_posts, only: [:show, :edit]

    def index
        @posts = Post.all.limit(5).order('created_at DESC')
    end

    def show
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
            if @post.save
                flash[:notice] = "Successfully created post!"
                redirect_to post_path(@post)
            else
                flash[:alert] = "Error creating new post!"
                render :new
            end    
    end


    private

    def set_posts
        @post = Post.find(params[:id])
    end

    def post_params
        params.require(:post).permit(:title, :body, :author_id)
    end
end
