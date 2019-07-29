Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'page#lp'
  get 'service', to: 'page#index'
  get 'products', to: 'page#products'
  get 'company', to: 'page#company'
  get 'recruit', to: 'page#recruit'
  get 'contact', to: 'page#contact'
  get 'error', to: 'page#error'
  get 'service/media_consulting', to: 'page#media_consulting'
  get 'service/human_resource_development', to: 'page#project_pr'
  get 'service/translation', to: 'page#translation'
  post 'inquiry', to: 'page#inquiry'
end
