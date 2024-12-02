class InvoicesController < ApplicationController
  layout :resolve_layout

  def index
    @invoices = Invoice.all
  end

  def new
    @invoice = Invoice.new
  end

  def create
    @invoice = Invoice.new(invoice_params)

    if @invoice.save
      ContactMailer.with(invoice: @invoice).invoice_email.deliver_later(wait: 1.minute)
      redirect_to collections_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @invoice = Invoice.find(params[:id])
  end

  def update
    @invoice = Invoice.find(params[:id])

    if Invoice.update(invoice_params)
      redirect_to invoices_path
    end
  end

  private
  def invoice_params
    params.require(:invoice).permit(:name, :surname, :email, :from)
  end

  def resolve_layout
    if signed_in?
      "admin"
    else
      "application"
    end
  end
end
