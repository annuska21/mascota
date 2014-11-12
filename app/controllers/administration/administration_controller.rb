class Administration::AdministrationController < ApplicationController
    protect_from_forgery with: :exception
   before_filter :authenticate_shelter!
 end