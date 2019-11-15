Rails.application.routes.draw do
  match("/flexible/square/:the_number", { :controller => "application", :action => "flex_square", :via => "get" })

  match("/flexible/square_root/:the_number", { :controller => "application", :action => "flex_sqrt", :via => "get" })

  match("/flexible/random/:min/:max", { :controller => "application", :action => "random", :via => "get" })

  match("/square/results", { :controller => "application", :action => "query_square", :via => "get" })

  match("/square_root/results", { :controller => "application", :action => "query_sqrt", :via => "get" })

  match("/random/results", { :controller => "application", :action => "query_random", :via => "get" })

  match("/payment/results", { :controller => "application", :action => "payment", :via => "get" })

end
