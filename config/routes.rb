Rails.application.routes.draw do
  [:addresses, :events, :images, :participations, :roles, :users].each do |model|
    resources model, only: [:index, :show, :create, :update, :destroy]
  end

  root to: "application#home"
end
