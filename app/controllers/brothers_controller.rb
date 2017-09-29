class BrothersController < ApplicationController
# Integrate a controller action in the brothers' controller for handling the index action
    def index
        @brothers = Brother.all
    end
    
    def home
        @brothers = Brother.all
    end
    
    def create
        Brother.create(first_name: params[:brother][:first_name], last_name: params[:brother][:last_name], on_time: params[:brother][:on_time], email: params[:brother][:email])
        
        redirect_to list_path
    end
    
    def show
        @brother = Brother.find(params[:id])
    end
    
    def list
        @brothers = Brother.all
    end
    
    def admin 
        @brothers = Brother.all
    end
end