Spree::Core::Engine.routes.prepend do
  namespace :api do
    scope :module => :v1 do
      namespace :users do
        post   :sign_up
        post   :sign_in
      end
    end
  end
end
