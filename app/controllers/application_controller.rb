class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Necessary include if you plan on access controller instance
  # in Procs passed to #tracked method in your models
  include PublicActivity::StoreController
end
