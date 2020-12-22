class MiddlemanController < ApplicationController

    def api_call
        response = RestClient.get('http://makeup-api.herokuapp.com/api/v1/products.json')
        parsed_response =  JSON.parse(response)

        render json: parsed_response
    end

end
