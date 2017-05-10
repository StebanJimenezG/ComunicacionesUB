class TypeFsController < ApplicationController
  before_action :set_type_f, only: [:show, :edit, :update, :destroy]

  # GET /type_fs
  # GET /type_fs.json
  def index
    @type_fs = TypeF.all
  end

  # GET /type_fs/1
  # GET /type_fs/1.json
  def show
  end

  # GET /type_fs/new
  def new
    @type_f = TypeF.new
  end

  # GET /type_fs/1/edit
  def edit
  end

  # POST /type_fs
  # POST /type_fs.json
  def create
    @type_f = TypeF.new(type_f_params)

    respond_to do |format|
      if @type_f.save
        format.html { redirect_to @type_f, notice: 'Type f was successfully created.' }
        format.json { render :show, status: :created, location: @type_f }
      else
        format.html { render :new }
        format.json { render json: @type_f.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_fs/1
  # PATCH/PUT /type_fs/1.json
  def update
    respond_to do |format|
      if @type_f.update(type_f_params)
        format.html { redirect_to @type_f, notice: 'Type f was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_f }
      else
        format.html { render :edit }
        format.json { render json: @type_f.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_fs/1
  # DELETE /type_fs/1.json
  def destroy
    @type_f.destroy
    respond_to do |format|
      format.html { redirect_to type_fs_url, notice: 'Type f was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_f
      @type_f = TypeF.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_f_params
      params.require(:type_f).permit(:file)
    end
end
