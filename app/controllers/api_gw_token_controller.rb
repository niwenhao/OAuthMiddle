class ApiGwTokenController < ApplicationController
  before_action :load_scope

  def by_code
    response.header["APIGW-STATUS"] = 0
    response.header["APIGW-MESSAGE"] = ""
  end

  def refresh
    response.header["APIGW-STATUS"] = 0
    response.header["APIGW-MESSAGE"] = ""
  end

  def load_scope
    @scope = request.headers['APIGW-SCOPE']
  end
end
