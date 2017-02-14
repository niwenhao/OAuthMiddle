json.extract! token, :id, :sessionKey, :accessToken, :refreshToken, :scope, :created_at, :updated_at
json.url token_url(token, format: :json)