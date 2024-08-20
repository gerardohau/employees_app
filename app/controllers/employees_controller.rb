class EmployeesController < ApplicationController
  def index
    client = ApiClient.new(ENV['API_USERNAME'], ENV['API_PASSWORD'],ENV['API_CLIENT_SECRET'], ENV['API_CLIENT_ID'])
    @employees = client.get_employees
  end
end
