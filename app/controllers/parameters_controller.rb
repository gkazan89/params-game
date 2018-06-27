class ParametersController < ApplicationController
  def hello_method
    @hello = "world!"
    render "query_parameters.json.jbuilder"
  end
end
