class ArticlesController < ApplicationController
    def index
       @articles = Article.all 
       #NB plural. This grabs all articles for this action?
    end
    
    def new
        @article = Article.new
    end
    #form submission then pushed to create aciton
    
    
    def edit
        @article = Article.find(params[:id])
    end

    
    def create
        #render plain: params[:article].inspect
        @article = Article.new(article_params)
        if @article.save
            flash[:notice] = "Article was successfilly created"
            redirect_to article_path(@article)
        else 
            render :new
        end
    end
    
    def update
        @article = Article.find(params[:id])
        if @article.update(article_params)
            flash[:notice] = "Article was successfllly created"
            redirect_to article_path(@article)
        else
            render :edit
        end
    end

    def show
        @article = Article.find(params[:id])
    end
    
    private
        def article_params
            params.require(:article).permit(:title, :description)
        end

end