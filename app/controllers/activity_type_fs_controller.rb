class ActivityTypeFsController < ApplicationController
  before_action :set_activity_type_f, only: [:show, :edit, :update, :destroy]

  # GET /activity_type_fs
  # GET /activity_type_fs.json
  def index
    @activity_type_fs = ActivityTypeF.all
  end

  # GET /activity_type_fs/1
  # GET /activity_type_fs/1.json
  def show
  end

  # GET /activity_type_fs/new
  def new
    @activity_type_f = ActivityTypeF.new
  end

  # GET /activity_type_fs/1/edit
  def edit
  end

  # POST /activity_type_fs
  # POST /activity_type_fs.json
  def create
    @activity_type_f = ActivityTypeF.new(activity_type_f_params)

    respond_to do |format|
      if @activity_type_f.save
        format.html { redirect_to @activity_type_f, notice: 'Activity type f was successfully created.' }
        format.json { render :show, status: :created, location: @activity_type_f }
      else
        format.html { render :new }
        format.json { render json: @activity_type_f.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activity_type_fs/1
  # PATCH/PUT /activity_type_fs/1.json
  def update
    respond_to do |format|
      if @activity_type_f.update(activity_type_f_params)
        format.html { redirect_to @activity_type_f, notice: 'Activity type f was successfully updated.' }
        format.json { render :show, status: :ok, location: @activity_type_f }
      else
        format.html { render :edit }
        format.json { render json: @activity_type_f.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activity_type_fs/1
  # DELETE /activity_type_fs/1.json
  def destroy
    @activity_type_f.destroy
    respond_to do |format|
      format.html { redirect_to activity_type_fs_url, notice: 'Activity type f was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity_type_f
      @activity_type_f = ActivityTypeF.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activity_type_f_params
      params.require(:activity_type_f).permit(:id_activity, :id_type_f)
    end
end
