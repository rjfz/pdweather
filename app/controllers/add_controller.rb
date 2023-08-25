class Addontroller < ApplicationController
    def add
        render json: params
    end
end