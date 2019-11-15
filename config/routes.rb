Rails.application.routes.draw do
  match("/flexible/square/:the_number", { :controller => "application", :action => "flex_square", :via => "get" })

  match("/flexible/square_root/:the_number", { :controller => "application", :action => "flex_sqrt", :via => "get" })

  match("/flexible/random/:min/:max", { :controller => "application", :action => "random", :via => "get" })

end
