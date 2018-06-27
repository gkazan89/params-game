class ParametersController < ApplicationController
  # def hello_method
  #   @hello = "world!"
  #   render "query_parameters.json.jbuilder"
  # end

  def query_params_method
    name = params["name"]
    @output_message = "Your name is #{name}"
    render "query_parameters.json.jbuilder"
  end
end
