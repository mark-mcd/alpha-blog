class ArticlesController < ApplicationController
    before_action :set_article, only: [:edit, :show, :destroy, :update]
    
    def index
       @articles = Article.all 
       #NB plural. This grabs all articles for this action?
    end
    
    def new
        @article = Article.new
    end
    #form submission then pushed to create aciton
    
    
    def edit
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
        if @article.update(article_params)
            flash[:notice] = "Article was successfllly created"
            redirect_to article_path(@article)
        else
            render :edit
        end
    end

    def show
    end
        
    
    def destroy
       @article.destroy
       flash[:notice] = "Article was successflly deleted"
    end
    
    private
        def article_params
            params.require(:article).permit(:title, :description)
        end
        def set_article
            @article = Article.find(params[:id])
        end
             
end