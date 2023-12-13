class FormulariosController < ApplicationController
   
    
    def index 
        @formularios = Formulario.all
    end
    
    def show

    end

    def new
        @formulario = Formulario.new
    end



    def create
    @formulario = Formulario.new(formulario_params)

        if @formulario.save
            redirect_to @formulario, notice: 'Formulario was successfully created.'
        else
            render :new
        end
    end

    def edit

    end

    def update
        if @formulario.update(formulario_params)
            redirect_to @formulario, notice: 'Formulario was successfully updated.'
        else
          render :edit 
        end
    end

    def destroy
        @formulario.destroy
        redirect_to formularios_url, notice: 'Formulario was successfully destroyed.'
    end

    private

    def set_formulario
      @formulario = Formulario.find(params[:id])
    end

    def formulario_params
      params.require(:formulario).permit(:content, :answer)
    end
end
