Rails.application.routes.draw do
  get 'dashboard/accounts'
  get 'dashboard/transactions'
  get 'dashboard/balances'
  get 'get_token', to: 'home#get_token'
  post 'retrieve_accounts', to: 'dashboard#accounts'
  post 'retrieve_transactions', to: 'dashboard#transactions'
  post 'retrieve_owners', to: 'dashboard#owners'
  post 'retrieve_balance', to: 'dashboard#balances'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
