class AccountsController < ApplicationController
  before_action :get_divisions
  before_action :set_account, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json

  def index
    @transactions = Account.all
    respond_with(@transactions)
  end

  def show
    respond_with(@account)
  end

  def new
    @transaction = Account.new
    # raise @account.inspect
    respond_with(@transaction)
  end

  def update
    @account.update(account_params)
    respond_with(@account)
  end

  def create
    # raise account_params.inspect
    @account = Account.new(account_params)
    @account.save
    respond_with(@accounts)
  end

  def destroy
    @account.destroy
    respond_with(@accounts)
  end

  private
    def get_divisions
      @divisions = Division.all
    end

    def set_account
      @account = Account.find(params[:id])
    end

    def account_params
      params.require(:account).permit(:id,:tran_type,:amount,:tran_date,:description,:division_id)
    end

end
