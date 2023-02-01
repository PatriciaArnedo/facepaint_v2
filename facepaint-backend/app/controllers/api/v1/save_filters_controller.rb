class Api::V1::SaveFiltersController < ApplicationController

    def show
        save_filter = SaveFilter.find(params[:id])
        render json: save_filter 
    end

    def index
      saved_filters = SaveFilter.all
      render json: saved_filters
    end
  
    def create
        save_filter = SaveFilter.create(save_filter_params)
        render json: save_filter
    end

    def destroy
        save_filter = SaveFilter.find(params[:id])
        save_filter.destroy
        render json: {}
    end
  
    private
  
    def save_filter_params
        params.permit(:user_id, :filter_id)
    end
      
  end