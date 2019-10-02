class ExcelUploadsController < ApplicationController
  def index
    @excelUpload = Upload.new
  end
end
