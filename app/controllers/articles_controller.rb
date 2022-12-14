class ArticlesController < ApplicationController
    def index
        @articles = Article.all
    end

    def new
        @article = Article.new
    end

    def create
        @article = Article.new(article_params)
        # @article.name = params[:name]
        # @article.body = params[:body]

        if @article.save!
            redirect_to articles_path
        else 
            render :new
        end
    end

    def show
        @article = Article.find(params[:id])
    end
    
    #unsure code
    def edit
        @article = Article.find(params[:id])
     end
 
     def update
        @article = Article.find(params[:id])
        @article.update(name: params[:article][:name], body: params[:article][:body])
        redirect_to articles_path
     end
 
     def destroy
        @article = Article.find(params[:id])
        @article.destroy
        redirect_to articles_path
     end
     #unsure code
    
    private
    
    def article_params
        params.require(:article).permit(:name, :body)
    end

end
