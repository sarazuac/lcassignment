module Api
    module V1
        class PeopleController < ApplicationController
            def index 
                people = Person.order('name ASC');
                render json: {status: 'SUCCESS', message: 'Loaded people', data: people}, status: :ok
            end

        end
    end
end