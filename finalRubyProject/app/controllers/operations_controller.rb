class OperationsController < ApplicationController
  before_action :set_operation, only: %i[ show edit update destroy ]

  # GET /operations or /operations.json
  def index
    @operations = Operation.all
  end

  # GET /operations/1 or /operations/1.json
  def show
  end

  # GET /operations/new
  def new
    @operation = Operation.new
  end

  # GET /operations/1/edit
  def edit
  end

  # POST /operations or /operations.json
  def create
    client_origin = Client.find_by(id: params[:operation][:clientOrigin])
    client_destination = Client.find_by(id: params[:operation][:clientDestination])
    value = params[:operation][:value].to_f
    rate = client_origin.agency != client_destination.agency ? 5.0 : 0.0
    operation_params_with_rate = operation_params.merge(rate: rate)
  
    if value < client_origin.balance.to_f
      @operation = Operation.new(operation_params_with_rate)
  
      if @operation.save
        newBalanceDestination = client_destination.balance + value
        newBalanceOrigin = client_origin.balance - (value + rate)
        client_destination.update(balance: newBalanceDestination)
        client_origin.update(balance: newBalanceOrigin)
        redirect_to @operation, notice: 'Operation was successfully created.'
      else
        render :new, status: :unprocessable_entity
      end
    else
      @operation = Operation.new(operation_params)
      @operation.errors.add(:base, 'Balance is not enough')
  
      respond_to do |format|
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @operation.errors, status: :unprocessable_entity }
      end
    end
  end
  

  # PATCH/PUT /operations/1 or /operations/1.json
  def update
    respond_to do |format|
      if @operation.update(operation_params)
        format.html { redirect_to operation_url(@operation), notice: "Operation was successfully updated." }
        format.json { render :show, status: :ok, location: @operation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @operation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /operations/1 or /operations/1.json
  def destroy
    @operation.destroy

    respond_to do |format|
      format.html { redirect_to operations_url, notice: "Operation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_operation
      @operation = Operation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def operation_params
      params.require(:operation).permit(:clientOrigin, :clientDestination, :agency, :value)
    end
end
