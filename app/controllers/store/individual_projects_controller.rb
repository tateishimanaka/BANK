class Store::IndividualProjectsController < ApplicationController

  def new
    @individual_project = IndividualProject.new
  end

  def create
    @individual_project = IndividualProject.new(individual_project_params)
    @individual_project.store_id = current_store.id
    if @individual_project.save
      redirect_to individual_project_path(@individual_project)
    else
      render :new
    end
  end

  def show
    @store = current_store
    @individual_project = IndividualProject.find(params[:id])
  end

  def index
    @store = current_store
    @individual_projects = IndividualProject.all
  end

  def edit
    @individual_project = IndividualProject.find(params[:id])
  end

  def update
    @individual_project = IndividualProject.find(params[:id])
    if @individual_project.update(individual_project_params)
      redirect_to individual_project_path(@individual_project)
    else
      render :edit
    end
  end

  private

  def individual_project_params
    params.require(:individual_project).permit(:store_id, :last_name, :first_name, :last_name_kana, :first_name_kana, :collateral_id, :use_of_fund_id, :fund_type_id, :loan, :span, :month_payment, :last_mont_payment, :interest_rate, :joint_guarantor, :own_resource, :end_day, :date, :appoint_date, :is_active)
  end
end
