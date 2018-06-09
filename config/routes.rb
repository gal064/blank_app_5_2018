Rails.application.routes.draw do
  
  devise_for :users
  root 'cases#index'
  
  # Routes for the Bookmark resource:

  # CREATE
  get("/bookmarks/new", { :controller => "bookmarks", :action => "new_form" })
  post("/create_bookmark", { :controller => "bookmarks", :action => "create_row" })

  # READ
  get("/bookmarks", { :controller => "bookmarks", :action => "index" })
  get("/bookmarks/:id_to_display", { :controller => "bookmarks", :action => "show" })

  # UPDATE
  get("/bookmarks/:prefill_with_id/edit", { :controller => "bookmarks", :action => "edit_form" })
  post("/update_bookmark/:id_to_modify", { :controller => "bookmarks", :action => "update_row" })

  # DELETE
  get("/delete_bookmark/:id_to_remove", { :controller => "bookmarks", :action => "destroy_row" })

  #------------------------------

  # Routes for the Company resource:

  # CREATE
  get("/companies/new", { :controller => "companies", :action => "new_form" })
  post("/create_company", { :controller => "companies", :action => "create_row" })

  # READ
  get("/companies", { :controller => "companies", :action => "index" })
  get("/companies/:id_to_display", { :controller => "companies", :action => "show" })

  # UPDATE
  get("/companies/:prefill_with_id/edit", { :controller => "companies", :action => "edit_form" })
  post("/update_company/:id_to_modify", { :controller => "companies", :action => "update_row" })

  # DELETE
  get("/delete_company/:id_to_remove", { :controller => "companies", :action => "destroy_row" })

  #------------------------------

  # Routes for the Icomment resource:

  # CREATE
  get("/icomments/new", { :controller => "icomments", :action => "new_form" })
  post("/create_icomment", { :controller => "icomments", :action => "create_row" })

  # READ
  get("/icomments", { :controller => "icomments", :action => "index" })
  get("/icomments/:id_to_display", { :controller => "icomments", :action => "show" })

  # UPDATE
  get("/icomments/:prefill_with_id/edit", { :controller => "icomments", :action => "edit_form" })
  post("/update_icomment/:id_to_modify", { :controller => "icomments", :action => "update_row" })

  # DELETE
  get("/delete_icomment/:id_to_remove", { :controller => "icomments", :action => "destroy_row" })

  #------------------------------

  # Routes for the Icase resource:

  # CREATE
  get("/icases/new", { :controller => "icases", :action => "new_form" })
  post("/create_icase", { :controller => "icases", :action => "create_row" })

  # READ
  get("/icases", { :controller => "icases", :action => "index" })
  get("/icases/:id_to_display", { :controller => "icases", :action => "show" })

  # UPDATE
  get("/icases/:prefill_with_id/edit", { :controller => "icases", :action => "edit_form" })
  post("/update_icase/:id_to_modify", { :controller => "icases", :action => "update_row" })

  # DELETE
  get("/delete_icase/:id_to_remove", { :controller => "icases", :action => "destroy_row" })

  #------------------------------

  # Routes for the Club resource:

  # CREATE
  get("/clubs/new", { :controller => "clubs", :action => "new_form" })
  post("/create_club", { :controller => "clubs", :action => "create_row" })

  # READ
  get("/clubs", { :controller => "clubs", :action => "index" })
  get("/clubs/:id_to_display", { :controller => "clubs", :action => "show" })

  # UPDATE
  get("/clubs/:prefill_with_id/edit", { :controller => "clubs", :action => "edit_form" })
  post("/update_club/:id_to_modify", { :controller => "clubs", :action => "update_row" })

  # DELETE
  get("/delete_club/:id_to_remove", { :controller => "clubs", :action => "destroy_row" })

  #------------------------------

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
