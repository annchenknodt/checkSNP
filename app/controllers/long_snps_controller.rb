class LongSnpsController < ApplicationController
  before_action :set_long_snp, only: [:show, :edit, :update, :destroy]

  # GET /long_snps
  # GET /long_snps.json
  def index
	@long_snps = LongSnp.search(params[:search])
  end

  # GET /long_snps/1
  # GET /long_snps/1.json
  def show
  end

  # GET /long_snps/new
  def new
    @long_snp = LongSnp.new
  end

  # GET /long_snps/1/edit
  def edit
  end

  # POST /long_snps
  # POST /long_snps.json
  def create
    @long_snp = LongSnp.new(long_snp_params)

    respond_to do |format|
      if @long_snp.save
        format.html { redirect_to @long_snp, notice: 'Long snp was successfully created.' }
        format.json { render action: 'show', status: :created, location: @long_snp }
      else
        format.html { render action: 'new' }
        format.json { render json: @long_snp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /long_snps/1
  # PATCH/PUT /long_snps/1.json
  def update
    respond_to do |format|
      if @long_snp.update(long_snp_params)
        format.html { redirect_to @long_snp, notice: 'Long snp was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @long_snp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /long_snps/1
  # DELETE /long_snps/1.json
  def destroy
    @long_snp.destroy
    respond_to do |format|
      format.html { redirect_to long_snps_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_long_snp
      @long_snp = LongSnp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def long_snp_params
      params.require(:long_snp).permit(:CHR, :SNP, :A1, :A2, :MAF, :NCHROBS)
    end
end
