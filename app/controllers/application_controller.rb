class ApplicationController < ActionController::Base
  def flex_square
    the_num = params.fetch("the_number").to_i
    the_square = the_num ** 2

    output_message = "{\"number\": #{the_num}, \"square\": #{the_square}}"

    render({ :plain => output_message})
  end

  def flex_sqrt
    the_num = params.fetch("the_number").to_i
    the_sqrt = Math.sqrt(the_num)

    output_message = "{\"number\": #{the_num}, \"square root\": #{the_sqrt}}"

    render({ :plain => output_message})
  end

  def random
    min = params.fetch("min").to_i
    max = params.fetch("max").to_i
    random = rand((min..max))

    output_message = "{\"min\": #{min}, \"max\": #{max}, \"random\": #{random}}"

    render({ :plain => output_message})
  end

  def query_square
    the_num = params.fetch("input_number").to_f
    the_square = the_num ** 2

    output_message = "{\"number\": #{the_num}, \"square\": #{the_square}}"

    render({ :plain => output_message})
  end

  def query_sqrt
    the_num = params.fetch("input_number").to_f
    the_sqrt = Math.sqrt(the_num)

    output_message = "{\"number\": #{the_num}, \"square root\": #{the_sqrt}}"

    render({ :plain => output_message})
  end

  def query_random
    min = params.fetch("input_min").to_f
    max = params.fetch("input_max").to_f
    random = rand((min..max))

    output_message = "{\"min\": #{min}, \"max\": #{max}, \"random\": #{random}}"

    render({ :plain => output_message})
  end

  def payment
    apr = params.fetch("input_apr").to_f
    years = params.fetch("input_years").to_f
    pv = params.fetch("input_pv").to_f
    purchase_price = (apr * pv) / (1 - (1 + apr)**-years)
    monthly_payment = purchase_price / (years * 12)

    output_message = "{\"purchase_price\": #{purchase_price}, \"apr\": #{apr}, \"years\": #{years}, \"monthly_payment\": #{monthly_payment}}"

    render({ :plain => output_message})
  end

end
