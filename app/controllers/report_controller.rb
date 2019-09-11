class ReportController < ApplicationController
  def index
    @workers = Worker.all
  end
end
