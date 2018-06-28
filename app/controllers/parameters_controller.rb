class ParametersController < ApplicationController

  def query_params_method
    name = params["name"]
    @output_message = "Your name is #{name}"
    if params["name"].downcase.starts_with?("a")
      @output_message = @output_message + " (your name starts with a)"
    else
    end
    render "query_parameters.json.jbuilder"
  end
  def guess_query_method
    winning_number = 32
    input_guess = params["variable"].to_i
    if input_guess > winning_number
      @output_message = "Pick lower!"
    elsif input_guess < winning_number
      @output_message = "Pick higher!"
    else
      @output_message = "You win!"
    end
    render "guess_query.json.jbuilder"  
  end
  def body_parameters_method
    input_value = params["secret_info"]
    @output_message = "The secret info is #{input_value}"
    render "body_parameters.json.jbuilder"
  end
end

