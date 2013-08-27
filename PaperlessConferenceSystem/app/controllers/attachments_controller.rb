class AttachmentsController < ApplicationController
  def destroy
  @conference=Conference.find(params[:conference_id])
    @issue = @conference.issues.find(params[:issue_id])
    @attachment=@issue.attachments.find(params[:id])
    @attachment.destroy

    respond_to do |format|
      format.html { redirect_to conference_issue_url(@conference,@issue) }
      format.js
    end
  end
end
