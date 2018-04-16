Rails.application.routes.draw do
  namespace 'feedbook' do
    resources :employees
  end
end
