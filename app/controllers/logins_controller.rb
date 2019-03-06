class LoginsController < ApplicationController
  before_action :set_login, only: [:show, :edit, :update, :destroy]

  # GET /logins
  # GET /logins.json
  def index
    @logins = Login.all
  end

  # GET /logins/1
  # GET /logins/1.json
  def show
  end

  # GET /logins/new
  def new
    @login = Login.new
  end

  # GET /logins/1/edit
  def edit
  end

  # POST /logins
  # POST /logins.json
  def create
    @login = Login.new(login_params)
      if @login.save
          flash[:success] = "User was succefully created"
      else
          render 'new'
      end
  end
  

  # PATCH/PUT /logins/1
  # PATCH/PUT /logins/1.json
  def update
      if @login.update(login_params)
        flash[:success] = "User was successfully updatabe"
        redirect_to @login
        else
            render 'edit'
        end
  end

  # DELETE /logins/1
  # DELETE /logins/1.json
  def destroy
    @login.destroy
    flash[:danger] = "User was successfully deleted"
    redirect_to root_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_login
      @login = Login.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def login_params
      params.require(:login).permit(:email, :username)
    end
end
