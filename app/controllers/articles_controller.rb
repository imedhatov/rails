class ArticlesController<ApplicationController
        def index
            @articles = Article.all
        end
        def new
            @article = Article.new
        end
        def create
        #render plain:params[:article].inspect
        @article = Article.new(articles_params)
       if @article.save
           redirect_to article_path
       else render "new"
       end
        end
        private
        def articles_params
            params.require(:article).permit(:title, :description)
        end
        
        
    
end