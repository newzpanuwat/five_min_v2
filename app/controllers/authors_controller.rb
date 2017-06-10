class AuthorsController < ApplicationController
    before_action :set_authors, only: [:show, :edit]

    def index
        @authors = Author.all
    end

    def show
    end

    def new
        @author = Author.new
    end

    def create
        @author = Author.new(author_params)
            if @author.save
                 flash[:notice] = "Successfully created author!"
                 redirect_to author_path(@author)
            else
                 flash[:alert] = "Error creating new author !"
                render :new
            end

    end

    def update
        @author = Author.new
            if @author.update(author_params)
                 flash[:notice] = "Successfully created post!"
                 redirect_to author_path(@author)
            else
                 flash[:alert] = "Error creating new post!"
                render :new
            end
    end

    def edit
    end

    def destroy
        
    end

    private

    def set_authors
        @author = Author.find(params[:id])
    end

    def author_params
        params.require(:author).permit(:name)
    end

end
