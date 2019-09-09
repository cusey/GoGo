class ReportController < ApplicationController
  def index
    @workers = Worker.all
    byebug
  end
end
