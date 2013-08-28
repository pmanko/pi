class RegistrationsController < Contour::RegistrationsController
  respond_to :html, :js

  def new
    build_resource({})
    respond_with self.resource
  end
end
