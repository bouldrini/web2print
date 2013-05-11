class App::ApplicationController < ApplicationController
  layout 'backend_application'
  before_filter :authenticate!

  protected
  def authenticate!
    authenticate_or_request_with_http_basic do |username, password|
      username == 'foo' && password == 'moo'
    end
  end
end
