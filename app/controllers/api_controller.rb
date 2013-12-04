class ApiController < ApplicationController
  respond_to :json

  def explore
    @json = doorkeeper_access_token.get("1/#{params[:api]}").parsed
    respond_with @json
  end
end
