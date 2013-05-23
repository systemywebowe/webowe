class SponsorProjectsController < ApplicationController
  # GET /sponsor_projects
  # GET /sponsor_projects.json
  def index
    @sponsor_projects = SponsorProject.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sponsor_projects }
    end
  end

  # GET /sponsor_projects/1
  # GET /sponsor_projects/1.json
  def show
    @sponsor_project = SponsorProject.find(params[:id])
    @project = @sponsor_project.project 
    @sponsor = @sponsor_project.sponsor 

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sponsor_project }
    end
  end

  # GET /sponsor_projects/new
  # GET /sponsor_projects/new.json
  def new
    @sponsor_project = SponsorProject.new
    @sponsors = Sponsor.all
    @projects = Project.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sponsor_project }
    end
  end

  # GET /sponsor_projects/1/edit
  def edit
    @sponsor_project = SponsorProject.find(params[:id])
  end

  # POST /sponsor_projects
  # POST /sponsor_projects.json
  def create
    @sponsor_project = SponsorProject.new(params[:sponsor_project])

    respond_to do |format|
      if @sponsor_project.save
        format.html { redirect_to @sponsor_project, notice: 'Sponsor project was successfully created.' }
        format.json { render json: @sponsor_project, status: :created, location: @sponsor_project }
      else
        format.html { render action: "new" }
        format.json { render json: @sponsor_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sponsor_projects/1
  # PUT /sponsor_projects/1.json
  def update
    @sponsor_project = SponsorProject.find(params[:id])

    respond_to do |format|
      if @sponsor_project.update_attributes(params[:sponsor_project])
        format.html { redirect_to @sponsor_project, notice: 'Sponsor project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sponsor_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sponsor_projects/1
  # DELETE /sponsor_projects/1.json
  def destroy
    @sponsor_project = SponsorProject.find(params[:id])
    @sponsor_project.destroy

    respond_to do |format|
      format.html { redirect_to sponsor_projects_url }
      format.json { head :no_content }
    end
  end
end
