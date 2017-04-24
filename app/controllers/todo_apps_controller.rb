class TodoAppsController < ApplicationController
  before_action :set_todo_app, only: [:show, :edit, :update, :destroy]

  # GET /todo_apps
  # GET /todo_apps.json
  def index
    @todo_apps = TodoApp.all
  end

  # GET /todo_apps/1
  # GET /todo_apps/1.json
  def show
  end

  # GET /todo_apps/new
  def new
    @todo_app = TodoApp.new
  end

  # GET /todo_apps/1/edit
  def edit
  end

  # POST /todo_apps
  # POST /todo_apps.json
  def create
    @todo_app = TodoApp.new(todo_app_params)

    respond_to do |format|
      if @todo_app.save
        format.html { redirect_to @todo_app, notice: 'Todo app was successfully created.' }
        format.json { render :show, status: :created, location: @todo_app }
      else
        format.html { render :new }
        format.json { render json: @todo_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /todo_apps/1
  # PATCH/PUT /todo_apps/1.json
  def update
    respond_to do |format|
      if @todo_app.update(todo_app_params)
        format.html { redirect_to @todo_app, notice: 'Todo app was successfully updated.' }
        format.json { render :show, status: :ok, location: @todo_app }
      else
        format.html { render :edit }
        format.json { render json: @todo_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todo_apps/1
  # DELETE /todo_apps/1.json
  def destroy
    @todo_app.destroy
    respond_to do |format|
      format.html { redirect_to todo_apps_url, notice: 'Todo app was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todo_app
      @todo_app = TodoApp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def todo_app_params
      params.require(:todo_app).permit(:name, :url, :rating, :picture)
    end
end
