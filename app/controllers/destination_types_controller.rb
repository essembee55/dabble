class DestinationTypesController < ApplicationController
  before_action :set_destination_type, only: [:show, :edit, :update, :destroy]

  # GET /destination_types
  # GET /destination_types.json
  def index
    @destination_types = DestinationType.all
  end

  # GET /destination_types/1
  # GET /destination_types/1.json
  def show
  end

  # GET /destination_types/new
  def new
    @destination_type = DestinationType.new
  end

  # GET /destination_types/1/edit
  def edit
  end

  # POST /destination_types
  # POST /destination_types.json
  def create
    @destination_type = DestinationType.new(destination_type_params)

    respond_to do |format|
      if @destination_type.save
        format.html { redirect_to @destination_type, notice: 'Destination type was successfully created.' }
        format.json { render :show, status: :created, location: @destination_type }
      else
        format.html { render :new }
        format.json { render json: @destination_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /destination_types/1
  # PATCH/PUT /destination_types/1.json
  def update
    respond_to do |format|
      if @destination_type.update(destination_type_params)
        format.html { redirect_to @destination_type, notice: 'Destination type was successfully updated.' }
        format.json { render :show, status: :ok, location: @destination_type }
      else
        format.html { render :edit }
        format.json { render json: @destination_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /destination_types/1
  # DELETE /destination_types/1.json
  def destroy
    @destination_type.destroy
    respond_to do |format|
      format.html { redirect_to destination_types_url, notice: 'Destination type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_destination_type
      @destination_type = DestinationType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def destination_type_params
      params.require(:destination_type).permit(:name)
    end
end
