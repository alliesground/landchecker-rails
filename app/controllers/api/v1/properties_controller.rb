module Api::V1
  class PropertiesController < ApiController
    def index
      properties = Property.all
      render json: properties, status: 200
    end

    def show
      property = Property.find_by(id: params[:id])

      if property
        render json: property, status: 200
      else
        render json: {errors: [{detail: 'The property does not exist'}]}, status: 404
      end
    end
  end
end
