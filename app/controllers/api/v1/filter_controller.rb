module Api
    module V1
        class FilterController < ApplicationController
            def index 
                filter = Filter.last();
                render json: {status: 'SUCCESS', message: 'Loaded filter', data: filter}, status: :ok
            end
            def create 
                filter = Filter.new(filter_params);
                if filter.save
                    render json: {status: 'SUCCESS', message: 'Saved filter', data: filter}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'Filter not saved', data: filter.errors}, status: :unprocessable_entity
                end

            end

            private 
            def filter_params
                params.permit(:input, :column, :order)
            end
        end
    end
end