class IesController < ApplicationController

  before_action :find_post, only: [:show, :edit, :update, :destroy]

  def index
    @ies = Ie.all
  end

  def show


  end

  def new
    @ie = Ie.new
  end

  def create
    @ie = Ie.new(ie_params)
    if @ie.save
      redirect_to @ie, notice: "A instiruição foi criada"
    else
      render 'new'
    end
  end

  def edit


  end

  def update
    if @ie.update(ie_params)
      redirect_to @ie, notice: "Dados atualizados com sucesso!"
    else
      render 'edit'
    end
  end

  def destroy
    @ie.destroy
    redirect_to root_path, notice: "Instituição excluída da base de dados!"
  end

private
  def ie_params
    params.require(:ie).permit(:nome, :nota_geral)
  end
  def find_ie
    @ie = Ie.find(params[:id])
  end

end
