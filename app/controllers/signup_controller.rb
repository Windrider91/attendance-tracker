class SignupController < ApplicationController
    
    def signup_params
       params.require(:signup).permit(:name, :email) 
    end
    def index
        
    end
    
    def new
        
    end
    
    def create
        
       render plain: params[:signup].inspect 
       
       file = File.open("SignupDetails.txt", "a")
       #line = name + "," + email + "\n"
	   
	   file.puts plain: params[:signup].inspect
	   #file.puts line
       file.close
    end
end
