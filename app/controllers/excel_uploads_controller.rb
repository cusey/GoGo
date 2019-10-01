class ExcelUploadsController < ApplicationController
  def index
    @upload = Upload.new
  end
end
