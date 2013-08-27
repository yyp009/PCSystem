class DownloadController < ApplicationController
def downSendData 
 io=File.open("#{Rails.root}/public/Files/attachments/"+params[:filename])
 io.binmode
 send_data(io.read,:filename=>params[:filename],
 :type=>"all",:disposition=>"attachment")
 io.close
 end
end
