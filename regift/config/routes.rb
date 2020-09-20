Rails.application.routes.draw do
  get 'enrollments/index'
  get 'enrollments/new'
  get 'enrollments/create'
  get 'enrollments/destroy'
  get 'gifts/index'
  get 'gifts/new'
  get 'gifts/create'
  get 'gifts/show'
  get 'gifts/edit'
  get 'gifts/update'
  get 'gifts/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
