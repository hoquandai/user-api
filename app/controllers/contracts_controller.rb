class ContractsController < ApplicationController
  before_action :set_contract, only: [:show, :update, :destroy]
  skip_before_action :authorize
  # GET /contracts
  # GET /contracts.json
  def index
    @contracts = Contract.all
    render_serializer @contracts, ContractSerializer
  end

  # GET /contracts/1
  # GET /contracts/1.json
  def show
    render_serializer @contract, ContractSerializer
  end

  # POST /contracts
  # POST /contracts.json
  def create
    @contract = Contract.new(contract_params)

    if @contract.save
      render_serializer @contract, ContractSerializer
    else
      render json: @contract.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /contracts/1
  # PATCH/PUT /contracts/1.json
  def update
    if @contract.update(contract_params)
      render_serializer @contract, ContractSerializer
    else
      render json: @contract.errors, status: :unprocessable_entity
    end
  end

  # DELETE /contracts/1
  # DELETE /contracts/1.json
  def destroy
    @contract.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contract
      @contract = Contract.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contract_params
      params.require(:contract).permit(:course, :subject, :addr, :schedule, :time, :status, :paid, :tutor_id, :student_id)
    end
end
