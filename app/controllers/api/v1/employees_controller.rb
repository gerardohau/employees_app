class Api::V1::EmployeesController < ApplicationController
  def index
    client = ApiClient.new('hiring', 'tmtg','3e0f85f44b9ffbc87e90acf40d482602', '6779ef20e75817b79605')
    @resources = client.get_employees
    render json: @resources
  end
end
