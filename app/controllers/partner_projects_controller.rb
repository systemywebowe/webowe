class PartnerProjectsController < ApplicationController
  # GET /partner_projects
  # GET /partner_projects.json
  def index
    @partner_projects = PartnerProject.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @partner_projects }
    end
  end

  # GET /partner_projects/1
  # GET /partner_projects/1.json
  def show
    @partner_project = PartnerProject.find(params[:id])
    @project = @partner_project.project 
    @partner = @partner_project.partner 
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @partner_project }
    end
  end

  # GET /partner_projects/new
  # GET /partner_projects/new.json
  def new
    @partner_project = PartnerProject.new
    @partners = Partner.all
    @projects = Project.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @partner_project }
    end
  end

  # GET /partner_projects/1/edit
  def edit
    @partner_project = PartnerProject.find(params[:id])
  end

  # POST /partner_projects
  # POST /partner_projects.json
  def create
    @partner_project = PartnerProject.new(params[:partner_project])

    respond_to do |format|
      if @partner_project.save
        format.html { redirect_to @partner_project, notice: 'Partner project was successfully created.' }
        format.json { render json: @partner_project, status: :created, location: @partner_project }
      else
        format.html { render action: "new" }
        format.json { render json: @partner_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /partner_projects/1
  # PUT /partner_projects/1.json
  def update
    @partner_project = PartnerProject.find(params[:id])

    respond_to do |format|
      if @partner_project.update_attributes(params[:partner_project])
        format.html { redirect_to @partner_project, notice: 'Partner project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @partner_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /partner_projects/1
  # DELETE /partner_projects/1.json
  def destroy
    @partner_project = PartnerProject.find(params[:id])
    @partner_project.destroy

    respond_to do |format|
      format.html { redirect_to partner_projects_url }
      format.json { head :no_content }
    end
  end
end
