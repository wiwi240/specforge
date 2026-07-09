Rails.application.routes.draw do
  # Expose uniquement les routes API utiles au MVP pour la ressource analyses:
  # index, show, create, update et destroy.
  resources :analyses, only: %i[index show create update destroy]
end
