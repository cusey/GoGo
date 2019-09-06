module ReportHelper
    
    def format_name(worker_name,worker_gender)
        
        if "M"  == worker_gender
          return "Mr. #{worker_name}"
        else
          return "Ms. #{worker_name}"
        end
          
    end 
    
end
