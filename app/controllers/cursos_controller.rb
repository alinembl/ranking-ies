class CursosController < ApplicationController

  before_action :find_post, only: [:show, :edit, :update, :destroy]

  def index
    @cursos = Curso.all
  end

  def show


  end

  def new
    @curso = Curso.new
  end

  def create
     @curso = Curso.new(curso_params)
     if @curso.save
          redirect_to @curso, notice: "O curso foi criado"
     else
          render 'new'
     end
   end

  def edit


  end

  def update
   if @curso.update(post_params)
        redirect_to @curso, notice: "Curso atualizado com sucesso!"
   else
        render 'edit'
   end
 end

 def destroy
    @curso.destroy
    redirect_to root_path, notice: "Curso Excluído da base de dados"
 end

  private
    def curso_params
      params.require(:ie).permit(:nome, :nota_curso, :media_alunos, :ies_id)
    end
    def find_curso
      @curso = Curso.find(params[:id])
    end
end
