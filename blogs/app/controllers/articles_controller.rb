class ArticlesController < ApplicationController
def new
@article= Article.new
@article.title="Pruebaa"
	end	
def create 
	@article = Article.create(title: params[:article][:title]) 
	 if @article.save
      flash[:notice] = "El articulo se guardo de manera exitosa"
      redirect_to (@article)
      #render json: @article
    else
      render :new
	#render json: @article
	end
end
def index
	@articles = Article.all
	end
def show 
	@article= Article.find(params[:id])
	
end

#metodo para editar
def edit
	@article= Article.find(params[:id])

	end
def update
	@article = Article.find(params[:id])
	@article.update(title: params[:article][:title], status: params[:article][:status]
		)
        redirect_to @article	
	end
def destroy
	@article = Article.find(params[:id])
	@article.destroy
	redirect_to ("articles/index")

	end


end
