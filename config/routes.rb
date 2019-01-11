Rails.application.routes.draw do
  get 'invoices/index'
  get 'invoices/show'
  get 'invoices/new'
  get 'invoices/delete'
  get 'invoices/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
