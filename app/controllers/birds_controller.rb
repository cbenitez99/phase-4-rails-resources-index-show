class BirdsController < ApplicationController
    def index
        birds = Bird.all
        render json: birds, only: [:index, :show]
    end

    def show
        bird = Bird.find_by(id: params[:id])
        if bird
            render json: bird
        else
            render json: {error: "Bird not found"}, status: :not_found
        end
    end
end
