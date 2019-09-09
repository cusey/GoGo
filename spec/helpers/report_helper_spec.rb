require 'spec_helper'

class ReportHelper
    
    def format_name(worker_name,worker_gender)
        
        if "M"  == worker_gender
          return "Mr. #{worker_name}"
        else
          return "Ms. #{worker_name}"
        end
          
    end 
    
end

describe ReportHelper do
  it 'English honorific to name' do
    helper = ReportHelper.new
    expect(helper.format_name("John Cusey","M")).to eq("Mr. John Cusey")
  end
end