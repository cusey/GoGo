class UploadResultsController < ApplicationController
  before_action :set_upload_result, only: [:show, :edit, :update, :destroy]

  # GET /upload_results
  # GET /upload_results.json
  def index
    @upload_results = UploadResult.all
  end

  # GET /upload_results/1
  # GET /upload_results/1.json
  def show
  end

  # GET /upload_results/new
  def new
    @upload_result = UploadResult.new
  end

  # GET /upload_results/1/edit
  def edit
  end

  # POST /upload_results
  # POST /upload_results.json
  def create
    @upload_result = UploadResult.new(upload_result_params)

    respond_to do |format|
      if @upload_result.save
        format.html { redirect_to @upload_result, notice: 'Upload result was successfully created.' }
        format.json { render :show, status: :created, location: @upload_result }
      else
        format.html { render :new }
        format.json { render json: @upload_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /upload_results/1
  # PATCH/PUT /upload_results/1.json
  def update
    respond_to do |format|
      if @upload_result.update(upload_result_params)
        format.html { redirect_to @upload_result, notice: 'Upload result was successfully updated.' }
        format.json { render :show, status: :ok, location: @upload_result }
      else
        format.html { render :edit }
        format.json { render json: @upload_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /upload_results/1
  # DELETE /upload_results/1.json
  def destroy
    @upload_result.destroy
    respond_to do |format|
      format.html { redirect_to upload_results_url, notice: 'Upload result was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_upload_result
      @upload_result = UploadResult.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def upload_result_params
      params.require(:upload_result).permit(:uploadId, :source, :resourceId, :isValid)
    end
end
