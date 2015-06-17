class TangazosController < ApplicationController
  before_action :set_tangazo, only: [:show, :edit, :update, :destroy]

  # GET /tangazos
  # GET /tangazos.json
  def index
    @tangazos = Tangazo.all
  end

  # GET /tangazos/1
  # GET /tangazos/1.json
  def show
  end

  # GET /tangazos/new
  def new
    @tangazo = Tangazo.new
  end

  # GET /tangazos/1/edit
  def edit
  end

  # POST /tangazos
  # POST /tangazos.json
  def create
    @tangazo = Tangazo.new(tangazo_params)

    respond_to do |format|
      if @tangazo.save
        format.html { redirect_to @tangazo, notice: 'Tangazo was successfully created.' }
        format.json { render :show, status: :created, location: @tangazo }
      else
        format.html { render :new }
        format.json { render json: @tangazo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tangazos/1
  # PATCH/PUT /tangazos/1.json
  def update
    respond_to do |format|
      if @tangazo.update(tangazo_params)
        format.html { redirect_to @tangazo, notice: 'Tangazo was successfully updated.' }
        format.json { render :show, status: :ok, location: @tangazo }
      else
        format.html { render :edit }
        format.json { render json: @tangazo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tangazos/1
  # DELETE /tangazos/1.json
  def destroy
    @tangazo.destroy
    respond_to do |format|
      format.html { redirect_to tangazos_url, notice: 'Tangazo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tangazo
      @tangazo = Tangazo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tangazo_params
      params.require(:tangazo).permit(:image, :description, :owner)
    end
end
