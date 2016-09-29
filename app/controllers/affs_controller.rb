class AffsController < ApplicationController
  before_action :set_aff, only: [:show, :edit, :update, :destroy]

  # GET /affs
  # GET /affs.json
  def index
    @affs = Aff.all
  end

  # GET /affs/1
  # GET /affs/1.json
  def show
  end

  # GET /affs/new
  def new
    @aff = Aff.new
  end

  # GET /affs/1/edit
  def edit
  end

  # POST /affs
  # POST /affs.json
  def create
    @aff = Aff.new(aff_params)

    respond_to do |format|
      if @aff.save
        format.html { redirect_to @aff, notice: 'Aff was successfully created.' }
        format.json { render :show, status: :created, location: @aff }
      else
        format.html { render :new }
        format.json { render json: @aff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /affs/1
  # PATCH/PUT /affs/1.json
  def update
    respond_to do |format|
      if @aff.update(aff_params)
        format.html { redirect_to @aff, notice: 'Aff was successfully updated.' }
        format.json { render :show, status: :ok, location: @aff }
      else
        format.html { render :edit }
        format.json { render json: @aff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /affs/1
  # DELETE /affs/1.json
  def destroy
    @aff.destroy
    respond_to do |format|
      format.html { redirect_to affs_url, notice: 'Aff was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aff
      @aff = Aff.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aff_params
      params.require(:aff).permit(:name)
    end
end
