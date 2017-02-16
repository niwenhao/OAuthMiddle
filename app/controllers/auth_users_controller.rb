class AuthUsersController < ApplicationController
  before_action :set_auth_user, only: [:show, :edit, :update, :destroy]

  # GET /auth_users
  # GET /auth_users.json
  def index
    @auth_users = AuthUser.all
  end

  def prelogin
    
  end

  def postlogin
    uid = params[:userid]
    pwd = params[:passwd]

    users = AuthUser.where(userid: uid, passwd: pwd)
    if users.size == 1 then
      render json: users[0]
    else
      redirect_to prelogin_auth_users_url
    end
  end

  # GET /auth_users/1
  # GET /auth_users/1.json
  def show
  end

  # GET /auth_users/new
  def new
    @auth_user = AuthUser.new
  end

  # GET /auth_users/1/edit
  def edit
  end

  # POST /auth_users
  # POST /auth_users.json
  def create
    @auth_user = AuthUser.new(auth_user_params)

    respond_to do |format|
      if @auth_user.save
        format.html { redirect_to @auth_user, notice: 'Auth user was successfully created.' }
        format.json { render :show, status: :created, location: @auth_user }
      else
        format.html { render :new }
        format.json { render json: @auth_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /auth_users/1
  # PATCH/PUT /auth_users/1.json
  def update
    respond_to do |format|
      if @auth_user.update(auth_user_params)
        format.html { redirect_to @auth_user, notice: 'Auth user was successfully updated.' }
        format.json { render :show, status: :ok, location: @auth_user }
      else
        format.html { render :edit }
        format.json { render json: @auth_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auth_users/1
  # DELETE /auth_users/1.json
  def destroy
    @auth_user.destroy
    respond_to do |format|
      format.html { redirect_to auth_users_url, notice: 'Auth user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auth_user
      @auth_user = AuthUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def auth_user_params
      params.require(:auth_user).permit(:userid, :passwd, :name, :mail, :address)
    end
end
