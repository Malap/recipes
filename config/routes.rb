Rails.application.routes.draw do
  get 'operating_systems/index'

  get 'operating_systems/show'

  get 'operating_systems/edit'

  get 'operating_systems/new'
  get 'operating_systems/sample'

  resources :recipes
  resources :colleages
  resources :wine_marts
  get 'samples/get_sample'
  get 'samples/get_sample2'
  get 'samples/get_sample3'

  get 'students/get_student'
  get 'students/get_student2'
  get 'students/get_student3'

  resources :cards do
    member do
      get 'rename_first_record'
      get  'rename_second_record'
    end
          collection do
            get 'rename_first_ten_records'
          end
      end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
