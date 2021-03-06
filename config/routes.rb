# :nocov:
class ActionDispatch::Routing::Mapper
  def edit_step(name, opts = {})
    resource name,
             only:       [:edit, :update],
             controller: name,
             path_names: { edit: '' } do

      resources only:       [:edit, :update, :destroy],
                controller: name,
                path_names: { edit: '' } if opts.fetch(:enable_crud, false)
    end
  end

  def show_step(name)
    resource name,
             only:       [:show],
             controller: name
  end
end
# :nocov:

Rails.application.routes.draw do
  devise_for :users,
             controllers: {
               registrations: 'users/registrations',
               passwords: 'users/passwords',
               sessions: 'users/logins'
             },
             path_names: {
               sign_in: 'login',
               sign_out: 'logout'
             }

  namespace :steps do
    namespace :children do
      edit_step :personal_details, enable_crud: true
    end
    namespace :applicant do
      edit_step :user_type
      edit_step :number_of_children
      edit_step :personal_details, enable_crud: true
    end
    namespace :respondent do
      edit_step :personal_details, enable_crud: true
    end
    namespace :help_with_fees do
      edit_step :help_paying
    end
  end

  resource :session, only: [:destroy] do
    member do
      get :ping
    end
  end

  resources :status, only: [:index]

  resource :errors, only: [] do
    get :invalid_session
    get :unhandled
  end

  root to: 'entrypoint#v1'

  get 'entrypoint/v1'
  get 'entrypoint/v2'
  get 'entrypoint/v3'

  get :miam_acknowledgement, to: 'miam#index', as: :miam_acknowledgement
  get :contact, to: 'home#contact', as: :contact_page
  get :cookies, to: 'home#cookies', as: :cookies_page

  # catch-all route
  # :nocov:
  match '*path', to: 'errors#not_found', via: :all, constraints:
    lambda { |_request| !Rails.application.config.consider_all_requests_local }
  # :nocov:
end
