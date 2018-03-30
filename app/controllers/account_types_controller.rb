class AccountTypesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_account_type, only: [:show, :edit, :update, :destroy]

  def index
    @account_types = AccountType.all
  end

  def show
  end

  def new
    @account_type = AccountType.new
  end

  def edit
  end

  def create
    @account_type = AccountType.new(account_type_params)
    respond_to do |format|
      if @account_type.save
        format.html { redirect_to @account_type, notice: 'Account type was successfully created.' }
        format.json { render :show, status: :created, location: @account_type }
      else
        format.html { render :new }
        format.json { render json: @account_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @account_type.update(account_type_params)
        format.html { redirect_to @account_type, notice: 'Account type was successfully updated.' }
        format.json { render :show, status: :ok, location: @account_type }
      else
        format.html { render :edit }
        format.json { render json: @account_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @account_type.destroy
    respond_to do |format|
      format.html { redirect_to account_types_url, notice: 'Account type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_account_type
    @account_type = AccountType.find(params[:id])
  end

  def account_type_params
    params.fetch(:account_type, {})
  end
end
