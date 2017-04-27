class CalculationsController < ApplicationController
  def flex_square
    #params = {"the_number"=>"17"}
    @user_provided_number = params["the_number"].to_f
    @squared_number = @user_provided_number ** 2
    render("calculations/flex_square.html.erb")
  end

  def flex_square_root
    # params = {"the_number"=>"17"}
    @user_provided_number = params["the_number"].to_f
    @squared_rootnumber = Math.sqrt(@user_provided_number).round(2)
    render("calculations/flex_square_root.html.erb")
  end

  def flex_payment
    # params = {"apr"=>"410", "year"=>"10", "total_amount"=>"20000"}
    @apr = params["apr"].to_f.round(6)/10000
    @year = params["year"].to_i
    @principal = params["total_amount"].to_i
    @monthly_payment = (@apr / 12 * @principal) / (1 - ((1 + @apr / 12 ) ** ((-1) * @year * 12)))
    render("calculations/flex_payment.html.erb")
  end

  def flex_random
    # Parameters: {"min"=>"1", "max"=>"20"}
    @min = params["min"].to_i
    @max = params["max"].to_i
    @random = (@min + rand(@max-@min+1)).to_i
    render("calculations/flex_random.html.erb")
  end

  def square_form
    render("calculations/square_form.html.erb")
  end

  def square
    #params =  {"number_to_be_squared"=>"42"}
    @user_provided_number = params["number_to_be_squared"].to_f
    @squared_number = @user_provided_number ** 2
    render("calculations/square.html.erb")
  end

  def square_root_form
    render("calculations/square_root_form.html.erb")
  end

  def square_root
    @number = params["number_to_be_square_rooted"].to_f
    @squared_rooted_number = Math.sqrt(@number)
    render("calculations/square_root.html.erb")
  end

  def payment_form
    render("calculations/payment_form.html.erb")
  end

  def payment
    @apr = params["apr"].to_f.round(6)/100
    @year = params["years"].to_i
    @principal = params["principal"].to_i
    @monthly_payment = (@apr / 12 * @principal) / (1 - ((1 + @apr / 12 ) ** ((-1) * @year * 12)))
    render("calculations/payment.html.erb")
  end

  def random_form
    render("calculations/random_form.html.erb")
  end

  def random
      @min = params["min"].to_f
      @max = params["max"].to_f
      @random = (@min + rand(@max-@min+0.1)).to_f
      render("calculations/random.html.erb")
  end

end
