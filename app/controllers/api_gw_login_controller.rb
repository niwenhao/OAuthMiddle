class ApiGwLoginController < ApplicationController
  around_action :load_scope

  def display
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
    @owner = Owner.findByScop @scope

    if @owner then
      response.header["APIGW-STATUS"] = 0
      response.header["APIGW-MESSAGE"] = ""
      yield
    else
      response.header["APIGW-STATUS"] = "801"
      response.header["APIGW-MESSAGE"] = "Failed to find owner for the scope (#{@scope})"
    end
  end
end
