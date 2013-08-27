Yugong::Application.routes.draw do
  # root :to => 'welcome#index'

  get 'oauth/authorize' => 'OAuth#authorize', as: 'oauth_authorize'
  get 'oauth/callback' => 'OAuth#callback', as: 'oauth_callback'

end
