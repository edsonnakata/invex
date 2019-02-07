class HistoriasController < ApplicationController
  before_action :set_historia, only: [:show, :edit, :update, :destroy]

  # GET /historia
  # GET /historia.json
  def index
    @historia = Historia.all
  end

  # GET /historia/1
  # GET /historia/1.json
  def show
  end

  # GET /historia/new
  def new
    @historia = Historia.new
  end

  # GET /historia/1/edit
  def edit
  end

  # POST /historia
  # POST /historia.json
  def create
    @historia = Historia.new(historia_params)

    respond_to do |format|
      if @historia.save
        format.html { redirect_to @historia, notice: 'Historium was successfully created.' }
        format.json { render :show, status: :created, location: @historia }
      else
        format.html { render :new }
        format.json { render json: @historia.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /historia/1
  # PATCH/PUT /historia/1.json
  def update
    respond_to do |format|
      if @historia.update(historia_params)
        format.html { redirect_to @historia, notice: 'Historium was successfully updated.' }
        format.json { render :show, status: :ok, location: @historia }
      else
        format.html { render :edit }
        format.json { render json: @historia.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /historia/1
  # DELETE /historia/1.json
  def destroy
    @historia.destroy
    respond_to do |format|
      format.html { redirect_to historias_url, notice: 'Historium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_historia
      @historia = Historia.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def historia_params
      params.require(:historia).permit(:usuario, :titulo, :nome, :descricao, :e_pago)
    end
end
