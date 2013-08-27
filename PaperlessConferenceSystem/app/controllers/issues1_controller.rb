class IssuesController < ApplicationController
 # GET /conferences/new
  # GET /conferences/new.json
  def new
    @conference = Conference.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @conference }
    end
  end
   # GET /conferences/create
  # GET /conferences/create.json
def create
@conference=Conference.find(params[:conference_id])
@issue=@conference.issues.create(params[:issue])
	redirect_to conference_path(@conference)
end
  def show
    @conference = Conference.find(params[:conference_id])
    @issue=@conference.issues.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @conference }
    end
  end
end
