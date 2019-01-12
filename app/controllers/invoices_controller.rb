class InvoicesController < ApplicationController
  def index
    @invoices = Invoice.all
  end

  def show
    @invoice = Invoice.find(params[:id])
  end

  def new
    @invoice = Invoice.new
  end

  def create
    @invoice = Invoice.new(invoice_params)
    if @invoice.save
      redirect_to(invoices_path)
    else
      render('new')
    end
  end

  def edit
    @invoice = Invoice.find(params[:id])
  end

  def update
    @invoice = Invoice.find(params[:id])
    if @invoice.update_attributes(invoice_params)
      redirect_to(invoice_path(@invoice))
    else
      render('edit')
    end
  end

  def delete
    @invoice = Invoice.find(params[:id])
  end

  def destroy
    @invoice = Invoice.find(params[:id])
    @invoice.destroy
    redirect_to(invoices_path)
  end

  private
  def invoice_params
    params.require(:invoice).permit(:amount, :company, :contragent, :currency, :date)
  end
end
