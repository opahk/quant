ActiveAdmin.register BodyComposition do

  controller do
    def permitted_params
      params.permit!
    end
  end

end
