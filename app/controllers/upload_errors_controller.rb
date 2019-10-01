class UploadErrorsController < ApplicationController
  before_action :set_upload_error, only: [:show, :edit, :update, :destroy]

  # GET /upload_errors
  # GET /upload_errors.json
  def index
    @upload_errors = UploadError.all
  end

  # GET /upload_errors/1
  # GET /upload_errors/1.json
  def show
  end

  # GET /upload_errors/new
  def new
    @upload_error = UploadError.new
  end

  # GET /upload_errors/1/edit
  def edit
  end

  # POST /upload_errors
  # POST /upload_errors.json
  def create
    @upload_error = UploadError.new(upload_error_params)

    respond_to do |format|
      if @upload_error.save
        format.html { redirect_to @upload_error, notice: 'Upload error was successfully created.' }
        format.json { render :show, status: :created, location: @upload_error }
      else
        format.html { render :new }
        format.json { render json: @upload_error.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /upload_errors/1
  # PATCH/PUT /upload_errors/1.json
  def update
    respond_to do |format|
      if @upload_error.update(upload_error_params)
        format.html { redirect_to @upload_error, notice: 'Upload error was successfully updated.' }
        format.json { render :show, status: :ok, location: @upload_error }
      else
        format.html { render :edit }
        format.json { render json: @upload_error.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /upload_errors/1
  # DELETE /upload_errors/1.json
  def destroy
    @upload_error.destroy
    respond_to do |format|
      format.html { redirect_to upload_errors_url, notice: 'Upload error was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_upload_error
      @upload_error = UploadError.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def upload_error_params
      params.require(:upload_error).permit(:uploadResultId, :message)
    end
end
