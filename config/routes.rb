LetsEncrypt::Engine.routes.draw do
	# root of the plugin
    root :to => 'lets_encrypt#index'
end
