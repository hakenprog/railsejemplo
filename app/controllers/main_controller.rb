class MainController < ApplicationController
	before_action :set_client, only: [:show]

  # GET /clients
  # GET /clients.json
  def index
    @clients = Client.all
  end

  # GET /clients/1
  # GET /clients/1.json
  def show
   	@services = @client.services
   	@total = 0
   	(@client.services).each do |service|
   		@total +=service.costo
   	end


  end
  

  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = Client.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def client_params
      params.require(:client).permit(:nombre)
    end
end
