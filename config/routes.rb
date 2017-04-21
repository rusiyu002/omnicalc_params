Rails.application.routes.draw do
  get("/flexible/square/:the_number", {
    :controller => "calculations",
    :action => "flex_square"
    })

    get("/flexible/square_root/:the_number", {
      :controller => "calculations",
      :action => "flex_square_root"
    })

    get("/square/new", {
      :controller => "calculations",
      :action => "square_form"
    })

    get("/square/results", {
      :controller => "calculations",
      :action => "square"
    })
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
