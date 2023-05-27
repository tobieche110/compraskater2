class VerproductosController < ApplicationController

    before_action do
        ActiveStorage::Current.url_options = {
          protocol: request.protocol,
          host: request.host,
          port: request.port
        }
      end
      
    def index
    end
end
