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
       file.puts plain: params[:signup].inspect
       file.close
    end
end
