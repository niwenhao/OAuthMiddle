class AuthPropertiesController < ApplicationController
  before_action :set_auth_property, only: [:show, :edit, :update, :destroy]
  before_action :set_owner_token

  # GET /auth_properties
  # GET /auth_properties.json
  def index
    @auth_properties = AuthProperty.all
  end

  # GET /auth_properties/1
  # GET /auth_properties/1.json
  def show
  end

  # GET /auth_properties/new
  def new
    @auth_property = AuthProperty.new
  end

  # GET /auth_properties/1/edit
  def edit
  end

  # POST /auth_properties
  # POST /auth_properties.json
  def create
    @auth_property = AuthProperty.new(auth_property_params)
    @token.authProperties << @auth_property

    respond_to do |format|
      if @auth_property.save
        format.html { redirect_to [@owner, @token, @auth_property], notice: 'Auth property was successfully created.' }
        format.json { render :show, status: :created, location: @auth_property }
      else
        format.html { render :new }
        format.json { render json: @auth_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /auth_properties/1
  # PATCH/PUT /auth_properties/1.json
  def update
    respond_to do |format|
      if @auth_property.update(auth_property_params)
        format.html { redirect_to [@owner, @token, @auth_property], notice: 'Auth property was successfully updated.' }
        format.json { render :show, status: :ok, location: @auth_property }
      else
        format.html { render :edit }
        format.json { render json: @auth_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auth_properties/1
  # DELETE /auth_properties/1.json
  def destroy
    @auth_property.destroy
    respond_to do |format|
      format.html { redirect_to owner_token_auth_properties_path [@owner, @token], notice: 'Auth property was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auth_property
      @auth_property = AuthProperty.find(params[:id])
    end

    def set_owner_token
      @owner = Owner.find(params[:owner_id])
      @token = Token.find(params[:token_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def auth_property_params
      params.require(:auth_property).permit(:key, :txtValue, :numValue, :token)
    end
end
