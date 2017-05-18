class ComitemembersController < ApplicationController
  before_action :set_comitemember, only: [:show, :edit, :update, :destroy]

  # GET /comitemembers
  # GET /comitemembers.json
  def index
    @comitemembers = Comitemember.all
  end

  # GET /comitemembers/1
  # GET /comitemembers/1.json
  def show
    @comitemembers = Comitemember.all
    @members = Member.all
  end

  # GET /comitemembers/new
  def new
    @comitemember = Comitemember.new

  end

  # GET /comitemembers/1/edit
  def edit
  end

  # POST /comitemembers
  # POST /comitemembers.json
  def create
    @comitemember = Comitemember.new(comitemember_params)

    respond_to do |format|
      if @comitemember.save
        format.html { redirect_to @comitemember, notice: 'Comitemember was successfully created.' }
        format.json { render :show, status: :created, location: @comitemember }
      else
        format.html { render :new }
        format.json { render json: @comitemember.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comitemembers/1
  # PATCH/PUT /comitemembers/1.json
  def update
    respond_to do |format|
      if @comitemember.update(comitemember_params)
        format.html { redirect_to @comitemember, notice: 'Comitemember was successfully updated.' }
        format.json { render :show, status: :ok, location: @comitemember }
      else
        format.html { render :edit }
        format.json { render json: @comitemember.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comitemembers/1
  # DELETE /comitemembers/1.json
  def destroy
    @comitemember.destroy
    respond_to do |format|
      format.html { redirect_to comitemembers_url, notice: 'Comitemember was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comitemember
      @comitemember = Comitemember.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comitemember_params
      params.require(:comitemember).permit(:committee_id, :member_id)
    end
end
