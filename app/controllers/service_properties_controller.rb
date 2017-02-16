class ServicePropertiesController < ApplicationController
  before_action :set_service_property, only: [:show, :edit, :update, :destroy]

  # GET /service_properties
  # GET /service_properties.json
  def index
    @service_properties = ServiceProperty.all
  end

  # GET /service_properties/1
  # GET /service_properties/1.json
  def show
  end

  # GET /service_properties/new
  def new
    @service_property = ServiceProperty.new
  end

  # GET /service_properties/1/edit
  def edit
  end

  # POST /service_properties
  # POST /service_properties.json
  def create
    @service_property = ServiceProperty.new(service_property_params)

    respond_to do |format|
      if @service_property.save
        format.html { redirect_to @service_property, notice: 'Service property was successfully created.' }
        format.json { render :show, status: :created, location: @service_property }
      else
        format.html { render :new }
        format.json { render json: @service_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_properties/1
  # PATCH/PUT /service_properties/1.json
  def update
    respond_to do |format|
      if @service_property.update(service_property_params)
        format.html { redirect_to @service_property, notice: 'Service property was successfully updated.' }
        format.json { render :show, status: :ok, location: @service_property }
      else
        format.html { render :edit }
        format.json { render json: @service_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_properties/1
  # DELETE /service_properties/1.json
  def destroy
    @service_property.destroy
    respond_to do |format|
      format.html { redirect_to service_properties_url, notice: 'Service property was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_property
      @service_property = ServiceProperty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_property_params
      params.require(:service_property).permit(:key, :key2, :strVal, :numVal, :comment)
    end
end
