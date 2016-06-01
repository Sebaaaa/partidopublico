class PersonasController < ApplicationController
  before_action :set_persona, only: [:show, :edit, :update, :destroy]

  # GET /personas
  # GET /personas.json
  # def index
  #   @personas = Persona.all
  # end

  # def index
  #   @grid = PersonasGrid.new(params[:personas_grid]) do |scope|
  #     scope.page(params[:page])
  #   end
  # end

  def index
    @grid = PersonasGrid.new(params[:personas_grid])
    respond_to do |f|
      f.html do
        @grid.scope {|scope| scope.page(params[:page]) }
      end
      f.csv do
        send_data @grid.to_csv,
          type: "text/csv",
          disposition: 'inline',
          filename: "personas-#{Time.now.to_s}.csv"
      end
    end
  end

  # GET /personas/1
  # GET /personas/1.json
  def show
  end

  # GET /personas/new
  def new
    @persona = Persona.new
  end

  # GET /personas/1/edit
  def edit
  end

  # POST /personas
  # POST /personas.json
  def create
    @persona = Persona.new(persona_params)

    respond_to do |format|
      if @persona.save
        format.html { redirect_to @persona, notice: 'Persona was successfully created.' }
        format.json { render :show, status: :created, location: @persona }
      else
        format.html { render :new }
        format.json { render json: @persona.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personas/1
  # PATCH/PUT /personas/1.json
  def update
    respond_to do |format|
      if @persona.update(persona_params)
        format.html { redirect_to @persona, notice: 'Persona was successfully updated.' }
        format.json { render :show, status: :ok, location: @persona }
      else
        format.html { render :edit }
        format.json { render json: @persona.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personas/1
  # DELETE /personas/1.json
  def destroy
    @persona.destroy
    respond_to do |format|
      format.html { redirect_to personas_url, notice: 'Persona was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def import_personas
    puts "import_personas import_personas import_personasimport_personasimport_personasimport_personas import_personas "
    puts params.to_yaml
    Persona.import(params[:file], params[:partido_id])

    # after the import, redirect and let us know the method worked!
    redirect_to root_url, notice: "Personas importadas!"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_persona
      @persona = Persona.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def persona_params
      params.require(:persona).permit(:nombre, :apellidos, :genero, :fecha_nacimiento, :nivel_estudios, :region, :ano_inicio_militancia, :afiliado, :bio)
    end
end
