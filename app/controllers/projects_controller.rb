class ProjectsController < ApplicationController

  before_action :set_project, only: [:show, :edit, :update, :destroy]
  before_action :set_clients, only: [:new, :create, :edit, :update]

  def index
    @projects = Project.all
  end

  def show;end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new project_params

    if @project.save
      redirect_to @project
    else
      render action: 'new'
    end
  end

  def edit;end

  def update
    if @project.update(project_params)
      redirect_to @project
    else
      render action: 'edit'
    end
  end

  def destroy
    @project.destroy

    redirect_to projects_path
  end

  private

    def project_params
      params.require(:project).permit(:name, :description, :delivered_at, :url, :client_id)
    end

    def set_project
      @project = Project.find(params[:id])      
    end

    def set_clients
      @clients = Client.all
    end
end
