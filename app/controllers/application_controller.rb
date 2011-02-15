class ApplicationController < ActionController::Base
  protect_from_forgery

  self.responder = ApplicationResponder
  self.respond_to :html, :json
end
