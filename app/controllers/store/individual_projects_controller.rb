class Store::IndividualProjectsController < ApplicationController
  
  def new
    @individual_project = IndividualProject.new
  end

  def create
    @individual_project = IndividualProject.new(individual_project_params)
    
  end
  
  def show
  end
  
  def index
  end
  
  def edit
  end
  
  def update
  end
  
  private
  
  def individual_project_params
    
  end
end
