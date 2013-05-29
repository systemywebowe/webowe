class MemberTeamsController < ApplicationController
  # GET /member_teams
  # GET /member_teams.json
  def index
    @member_teams = MemberTeam.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @member_teams }
    end
  end

  # GET /member_teams/1
  # GET /member_teams/1.json
  def show
    @member_team = MemberTeam.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @member_team }
    end
  end

  # GET /member_teams/new
  # GET /member_teams/new.json
  def new
    @member_team = MemberTeam.new
    @categories = Category.all
    @members = Member.all
    @member_team.team_id = params[:team_id]
    

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @member_team }
    end
  end

  # GET /member_teams/1/edit
  def edit
    @member_team = MemberTeam.find(params[:id])
  end

  # POST /member_teams
  # POST /member_teams.json
  def create
    @member_team = MemberTeam.new(params[:member_team])

    respond_to do |format|
      if @member_team.save
        format.html { redirect_to 'projects/3', notice: 'Member was successfully added.' }
        format.json { render json: @member_team, status: :created, location: @member_team }
      else
        format.html { render action: "new" }
        format.json { render json: @member_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /member_teams/1
  # PUT /member_teams/1.json
  def update
    @member_team = MemberTeam.find(params[:id])

    respond_to do |format|
      if @member_team.update_attributes(params[:member_team])
        format.html { redirect_to @member_team, notice: 'Member team was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @member_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /member_teams/1
  # DELETE /member_teams/1.json
  def destroy
    @member_team = MemberTeam.find(params[:id])
    @member_team.destroy

    respond_to do |format|
      format.html { redirect_to member_teams_url }
      format.json { head :no_content }
    end
  end
end
