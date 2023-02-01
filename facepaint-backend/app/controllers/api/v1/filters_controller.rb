class Api::V1::FiltersController < ApplicationController
    def show
        filter = Filter.find(params[:id])
        render json: filter
      end
    
      def index
        filters = Filter.all
        render json: filters
      end
  
      def create
          filter = Filter.create!(filter_params)
          render json: filter
      end
  
      def destroy
        filter = Filter.find(params[:id])
        filter.destroy
        render json: {}
      end
  
      private
  
      def filter_params
          params.permit(:name, :img, :user_id)
      end
end


