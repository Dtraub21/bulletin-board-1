Rails.application.routes.draw do
  get("/boards", { :controller => "boards", :action => "index" })
  post("/boards", { :controller => "boards", :action => "create" })
  get("/boards/:id", { :controller => "boards", :action => "show" })
  post("/posts", { :controller => "posts", :action => "create" })
end
