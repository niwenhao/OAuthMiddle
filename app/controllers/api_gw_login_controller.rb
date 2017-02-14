class ApiGwLoginController < ApplicationController
  before_action :load_scope

  def display
    response.header["APIGW-STATUS"] = 0
  end

  def input
    response.header["APIGW-STATUS"] = 0
    response.header["APIGW-USERNAME"] = "dummy"
  end

  def load_scope
    @scope = request.headers['APIGW-SCOPE']
  end
end
