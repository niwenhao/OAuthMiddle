class OwnerPropertiesController < ApplicationController
  before_action :set_owner_property, only: [:show, :edit, :update, :destroy]
  before_action :set_owner

  # GET /owner_properties
  # GET /owner_properties.json
  def index
    @owner_properties = @owner.ownerProperties
  end

  # GET /owner_properties/1
  # GET /owner_properties/1.json
  def show
  end

  # GET /owner_properties/new
  def new
    @owner_property = OwnerProperty.new
  end

  # GET /owner_properties/1/edit
  def edit
  end

  # POST /owner_properties
  # POST /owner_properties.json
  def create
    @owner_property = OwnerProperty.new(owner_property_params)
    @owner.ownerProperties << @owner_property

    respond_to do |format|
      if @owner_property.save
        format.html { redirect_to [@owner, @owner_property], notice: 'Owner property was successfully created.' }
        format.json { render :show, status: :created, location: @owner_property }
      else
        format.html { render :new }
        format.json { render json: @owner_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /owner_properties/1
  # PATCH/PUT /owner_properties/1.json
  def update
    respond_to do |format|
      if @owner_property.update(owner_property_params)
        format.html { redirect_to [@owner, @owner_property], notice: 'Owner property was successfully updated.' }
        format.json { render :show, status: :ok, location: @owner_property }
      else
        format.html { render :edit }
        format.json { render json: @owner_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /owner_properties/1
  # DELETE /owner_properties/1.json
  def destroy
    @owner_property.destroy
    respond_to do |format|
      format.html { redirect_to owner_owner_properties_url(@owner), notice: 'Owner property was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_owner_property
      @owner_property = OwnerProperty.find(params[:id])
    end

    def set_owner
      @owner = Owner.find(params[:owner_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def owner_property_params
      params.require(:owner_property).permit(:key, :key2, :str_val, :num_val, :comment)
    end
end
