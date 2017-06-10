class PostsController < ApplicationController
    def index
        
    end

    def show
        
    end

    def new

    end

    def create
        
    end

    def update
        
    end

    def edit
        
    end

    def destroy
    end

    private

    def set_posts
        @posts = Author.find(params[:id])
    end

    def post_params
        params.require(:post).permit(:title, :body)
    end
end
