class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  helper_method :mailbox, :conversation

 private
 # [...]
 def conversation
   @conversation ||= mailbox.conversations.find(params[:id])
 end

 protected

end
