class PedidosController < ApplicationController
  before_action :set_pedido, only: %i[ show edit update destroy ]

  # GET /pedidos or /pedidos.json
  def index
    @pedidos = Pedido.all
  end

  # GET /pedidos/1 or /pedidos/1.json
  def show
  end

  # GET /pedidos/new
  def new
    @pedido = Pedido.new
  end

  # GET /pedidos/1/edit
  def edit
  end

  # POST /pedidos or /pedidos.json
  def create
    #@pedido = Pedido.new(pedido_params)
    carro = JSON.parse(params[:carro])

    @pedido = Pedido.new(
      nombre: params[:nombre],
      tabla: carro[0],
      trucks: carro[1],
      ruedas: carro[2],
      rulemanes: carro[3],
      lija: carro[4],
      hardware: carro[5]
    )

    respond_to do |format|
      if @pedido.save
        format.html { redirect_to pedidosubido_url }
        format.json { render :show, status: :created, location: @pedido }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pedidos/1 or /pedidos/1.json
  def update
    respond_to do |format|
      if @pedido.update(pedido_params)
        format.html { redirect_to pedido_url(@pedido), notice: "Pedido was successfully updated." }
        format.json { render :show, status: :ok, location: @pedido }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pedidos/1 or /pedidos/1.json
  def destroy
    @pedido.destroy

    respond_to do |format|
      format.html { redirect_to pedidos_url, notice: "Pedido was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pedido
      @pedido = Pedido.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pedido_params
      params.require(:pedido).permit(:tabla, :trucks, :ruedas, :rulemanes, :lija, :hardware, :nombre)
    end
end
