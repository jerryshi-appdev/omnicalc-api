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
end
