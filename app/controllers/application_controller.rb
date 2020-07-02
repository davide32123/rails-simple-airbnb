class ApplicationController < ActionController::Base
  before_action :get_query

  private

  def get_query
    @query = params[:query]
  end
end
