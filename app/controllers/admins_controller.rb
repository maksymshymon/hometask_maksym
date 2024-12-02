class AdminsController < ApplicationController
  layout 'admin'
  def indexcd
    @admin = current_admin.name if signed_in?
  end
end
