Rails.application.routes.draw do
  root "palindroms#index", as: 'home'
  get 'result' => 'palindroms#result', as:'res'
end
