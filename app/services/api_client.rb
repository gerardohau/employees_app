require 'rest-client'
require 'json'

class ApiClient
  BASE_URL = 'https://beta.01cxhdz3a8jnmapv.com/api/v1'

  def initialize(username, password, client_secret, client_id)
    @username = username
    @password = password
    @client_secret = client_secret
    @client_id = client_id
    @token = authenticate
  end

  private

  def authenticate
    response = RestClient.post("#{BASE_URL}/assignment/token", {
      "grant_type": "password",
      "username": @username,
      "password": @password,
      "client_secret": @client_secret,
      "client_id": @client_id
    })

    puts response.code

    if response.code == 200
      body = JSON.parse(response.body)
      body['access_token']
    else
      raise "Authentication failed with status code #{response.code}"
    end
  end

  def headers
    {
      Authorization: "Bearer #{@token}",
      content_type: :json,
      accept: :json
    }
  end

  public

  def get_employees
    response = RestClient.get("#{BASE_URL}/assignment/employee/list", headers)
    JSON.parse(response.body)
  end
end
