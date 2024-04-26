# Classe que define os métodos controller de cada uma das ações RESTful

class MoviesController < ApplicationController
  #index apenas pega os filmes do Banco de Dados e tem sua respeciva View
  def index
    @movies = Movie.all
  end

  #new tem sua View para criar novos filme nela é chamada create para adicionar o filme ao BD
  def new
    @movie = Movie.new
  end

  #create não possui uma View própia apenas cria o filme e retorna para index com uma mensagem de sucesso ou erro
  def create
    if (@movie = Movie.create(params.require(:movie).permit(:title,:rating,:release_date)))
      redirect_to movies_path, :notice => "#{@movie.title} created."
    else
      flash[:alert] = "Movie #{@movie.title} could not be created: " +
        @movie.errors.full_messages.join(",")
      render 'new'
    end
  end

  #show procura um filme no BD e tem uma view que utiliza seus dados
  def show
    @movie = Movie.find(params[:id])
  end

  #edit funciona da mesma forma que show, mas tem uma view diferente
  def edit
    @movie = Movie.find(params[:id])
  end

  # em edit podemos chamar update que não possui uma View própria e funciona de forma similar a create
  def update
    @movie = Movie.find params[:id]
    if @movie.update(params.require(:movie).permit(:title, :rating, :release_date))
      redirect_to movie_path(@movie), :notice => "#{@movie.title} updated."
    else
      flash[:alert] = "#{@movie.title} could not be updated: " +
        @movie.errors.full_messages.join(",")
      render 'edit'
    end
  end

  #destroy também aparece em edit, não possui uma view própia e funciona como update e create
  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to movies_path, :notice => "#{@movie.title} deleted."
  end
end
