class ConciertosController < ApplicationController
  def index
    @conciertos = Concierto.all
  end
  def new
    @concierto = Concierto.new
    @grupos = Grupo.all
  end

  def show
    @concierto = Concierto.find(params[:id])
  end

  def edit

  end

  def create
    @concierto = Concierto.new(concierto_params) #Strong parameters, previene ataques de mass assignment
      respond_to do |format| if @concierto.save
          format.html { redirect_to @concierto, notice: 'El concierto fue creado correctamente.'}
        else
          format.html { render :new }
        end
      end
  end

    private
    def concierto_params
      params.require(:concierto).permit(:lugar, :personas_en_concierto, :conciertos_en_el_mes, :fecha_ultimo_concierto, :duracion)
    end
  end
