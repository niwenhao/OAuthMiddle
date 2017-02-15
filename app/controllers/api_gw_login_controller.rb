class ApiGwLoginController < ApplicationController
  before_action :load_scope

  def display
    response.header["APIGW-STATUS"] = 0
  end

  def login
    response.header["APIGW-STATUS"] = 0
    response.header["APIGW-USERNAME"] = "dummy"
    response.header["APIGW-USER-ROLE"] = "dummy"
  end

  def grant
    response.header["APIGW-STATUS"] = 0
    response.header["APIGW-MESSAGE"] = ""

    @sessionId = params["sessionID"]
    @authCode = params["authCode"]
  end

  def consent
    response.header["APIGW-STATUS"] = 0
    response.header["APIGW-MESSAGE"] = ""

    @sessionId = params["sessionID"]
  end

  def load_scope
    @scope = request.headers['APIGW-SCOPE']
  end
end
