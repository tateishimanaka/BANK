class Store::CorporationProjectsController < ApplicationController

  def new
    @corporation_project = CorporationProject.new
  end

  def create
    @corporation_project = CorporationProject.new(corporation_project_params)
    @corporation_project.store_id = current_store.id
    if @corporation_project.save
      redirect_to corporation_project_path(@corporation_project)
    else
      render :new
    end
  end

  def show
    @store = current_store
    @corporation_project = CorporationProject.find(params[:id])
  end

  def index
    @store = current_store
    @corporation_projects = CorporationProject.all
  end

  def edit
    @corporation_project = CorporationProject.find(params[:id])
  end

  def update
    @corporation_project = CorporationProject.find(params[:id])
    if @corporation_project.update
      redirect_to corporation_project_path(@corporation_project)
    else
      render :edit
    end
  end

  private

  def corporation_project_params
    params.require(:corporation_project).permit(:store_id, :name, :name_kana, :president, :president_kana, :collateral_id, :use_of_fund_id, :fund_type_id, :loan, :span, :month_payment, :last_mont_payment, :interest_rate, :joint_guarantor, :own_resource, :end_day, :date, :appoint_date, :is_active)
  end
end
