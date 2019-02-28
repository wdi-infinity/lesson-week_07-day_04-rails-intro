class ArticlesController < ApplicationController
    def new
    end

    
#     def create
#         # @article = Article.new(params[:article])
       
# @article = Article.new(params.require(:article).permit(:title, :text))
#         @article.save
#         redirect_to @article
#       end

      def create
        @article = Article.new(article_params)
       
        @article.save
        redirect_to @article
      end
       
      private
        def article_params
          params.require(:article).permit(:title, :text)
        end
  end