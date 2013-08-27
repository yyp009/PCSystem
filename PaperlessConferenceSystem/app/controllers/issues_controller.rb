class IssuesController < ApplicationController
  # GET /issues
  # GET /issues.json
  def index
  @conference=Conference.find(params[:conference_id])
    @issues = @conference.issues.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @issues }
    end
  end

  # GET /issues/1
  # GET /issues/1.json
  def show
    @conference=Conference.find(params[:conference_id])
    @issue = @conference.issues.find(params[:id])
    @attachments=@issue.attachments.all
    respond_to do |format|
      format.html # show.html.erb
      format.js
    end
  end

  # GET /issues/new
  # GET /issues/new.json
  def new
  @conference=Conference.find(params[:conference_id])
    @issue = @conference.issues.new
    @issue.attendees.build
	@issue.attachments.build
   # @issue = Issue.new(:conference_id => @conference.id)

    respond_to do |format|
      format.html # new.html.erb
      format.js
    end
  end

  # GET /issues/1/edit
  def edit
  @conference=Conference.find(params[:conference_id])
    @issue = @conference.issues.find(params[:id])
	respond_to do |format|
      format.html
      format.js
    end
  end

  # POST /issues
  # POST /issues.json

  def create
@conference=Conference.find(params[:conference_id])
    #@issue = @conference.issues.new(params[:issue])
@issue = @conference.issues.create(params[:issue])
    respond_to do |format|
      if @issue.save
        format.html { redirect_to [@conference,@issue], notice: 'Issue was successfully created.' }
        format.json { render json: @issue, status: :created, location: @issue }
      else
       format.html { render action: "new" }
        format.json { render json: @issue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /issues/1
  # PUT /issues/1.json
  def update
  @conference=Conference.find(params[:conference_id])
    @issue = @conference.issues.find(params[:id])

    respond_to do |format|
      if @issue.update_attributes(params[:issue])
        format.html { redirect_to [@conference,@issue], notice: 'Issue was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @issue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /issues/1
  # DELETE /issues/1.json
  def destroy
  @conference=Conference.find(params[:conference_id])
    @issue = @conference.issues.find(params[:id])
    @issue.destroy

    respond_to do |format|
      format.html { redirect_to conference_url(@conference) }
      format.js
    end
  end
end
